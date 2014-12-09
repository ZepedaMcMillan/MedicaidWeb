package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.NavigationBean;
import gov.nv.dwss.medicaid.application.web.bean.OtherInfoBean;
import gov.nv.dwss.medicaid.application.web.model.OtherInfo;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

public class AuthorizedRepServlet extends HttpServlet {
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
		
		request.setAttribute("otherInfo", otherInfo);	

		navBean.setNavItemSelected("AuthRep");		
		request.setAttribute("navBean", navBean);
		
		request.getRequestDispatcher("AuthorizedRep.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OtherInfo otherInfo = otherInfoBean.getOtherInfo();
		
		otherInfo.setIsAuthorizedRepNeeded(request.getParameter("isAuthorizedRepNeeded"));
		otherInfoBean.updateOtherInfo(otherInfo);
		
		if(request.getParameter("customAction").equalsIgnoreCase("edit")) {
			response.sendRedirect("AuthorizedRepDetail?itemIndex="+request.getParameter("itemIndex"));
		}  else if (request.getParameter("customAction").equalsIgnoreCase("delete")) {
			response.sendRedirect("DeleteAuthorizedRep?itemIndex="+request.getParameter("itemIndex"));
		} else {
			response.sendRedirect("MedicaidEstateRecoveryProgram");
		}
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
