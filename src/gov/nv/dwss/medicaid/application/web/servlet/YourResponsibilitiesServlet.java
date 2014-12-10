package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.NavigationBean;
import gov.nv.dwss.medicaid.application.web.bean.OtherInfoBean;
import gov.nv.dwss.medicaid.application.web.model.OtherInfo;
import gov.nv.dwss.medicaid.application.web.utils.FormatHelpers;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * Servlet implementation class YourResponsibilitiesServlet
 */
public class YourResponsibilitiesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private OtherInfoBean otherInfoBean;
	
	@Autowired
	private NavigationBean navBean;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OtherInfo otherInfo = otherInfoBean.getOtherInfo();
		
		request.setAttribute("info", otherInfo);
		
		navBean.setNavItemSelected("Rights");
		request.setAttribute("navBean", navBean);
		
		request.getRequestDispatcher("YourResponsibilities.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OtherInfo otherInfo = otherInfoBean.getOtherInfo();		
		otherInfo.setAgreeResp(FormatHelpers.formatBool(request.getParameter("agreeResp")));
		otherInfoBean.updateOtherInfo(otherInfo);

		response.sendRedirect("ReleaseOfInformation");	
	}	
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
