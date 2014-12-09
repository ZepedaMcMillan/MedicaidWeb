package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.NavigationBean;
import gov.nv.dwss.medicaid.application.web.bean.OtherInfoBean;
import gov.nv.dwss.medicaid.application.web.model.CoverageRenewalAPTC;
import gov.nv.dwss.medicaid.application.web.model.OtherInfo;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * Servlet implementation class RenewalOfCoverageServlet
 */
public class RenewalOfCoverageServlet extends HttpServlet {
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
		CoverageRenewalAPTC converageRenewalAPTC = otherInfo.getCoverageRenewalAPTC();
		
		request.setAttribute("info", converageRenewalAPTC);
		
		navBean.setNavItemSelected("");
		request.setAttribute("navBean", navBean);
		
		request.getRequestDispatcher("RenewalOfCoverage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OtherInfo otherInfo = otherInfoBean.getOtherInfo();
		CoverageRenewalAPTC coverageRenewalAPTC = otherInfo.getCoverageRenewalAPTC();
		
		coverageRenewalAPTC.setAllowReturnAccess(request.getParameter("allowReturnAccess"));
		coverageRenewalAPTC.setNumberOfYears(request.getParameter("numberOfYears"));
		
		// TODO: Wire up the Thunderhead implementation for preview here
		response.sendRedirect("AuthorizedRep");
	}

	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
