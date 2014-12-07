package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HealthInsuranceInfoBean;
import gov.nv.dwss.medicaid.application.web.bean.NavigationBean;
import gov.nv.dwss.medicaid.application.web.model.HealthInsuranceInfo;
import gov.nv.dwss.medicaid.application.web.model.OtherInsurance;
import gov.nv.dwss.medicaid.application.web.model.OtherInsuranceItem;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * Servlet implementation class OtherHealthInsuranceServlet
 */
public class OtherHealthInsuranceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private HealthInsuranceInfoBean healthInsuranceInfoBean;
	
	@Autowired
	private NavigationBean navBean;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//hasOtherInsurance
		HealthInsuranceInfo healthInsuranceInfo = healthInsuranceInfoBean.getHealthInsuranceInfo();
		OtherInsurance otherInsurance = healthInsuranceInfo.getOtherInsurance();
		
		List<OtherInsuranceItem> otherInsuranceDetails = 
				(otherInsurance.getOtherInsuranceDetails() != null ? otherInsurance.getOtherInsuranceDetails() : new ArrayList<OtherInsuranceItem>());
		
		otherInsurance.setOtherInsuranceDetails(otherInsuranceDetails);
		healthInsuranceInfo.setOtherInsurance(otherInsurance);
		healthInsuranceInfoBean.updateHealthInsuranceInfo(healthInsuranceInfo);
		
		request.setAttribute("otherInsurance", otherInsurance);
		navBean.setNavItemSelected("OtherInsurance");
		request.setAttribute("navBean", navBean);
		request.getRequestDispatcher("OtherHealthInsurance.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HealthInsuranceInfo healthInsuranceInfo = healthInsuranceInfoBean.getHealthInsuranceInfo();
		OtherInsurance otherInsurance = healthInsuranceInfo.getOtherInsurance();
		
		otherInsurance.setHasOtherInsurance(request.getParameter("hasOtherInsurance"));
		healthInsuranceInfo.setOtherInsurance(otherInsurance);
		healthInsuranceInfoBean.updateHealthInsuranceInfo(healthInsuranceInfo);
		
		if(request.getParameter("customAction").equalsIgnoreCase("update")) {
			response.sendRedirect("OtherHealthInsurance");
		} else {
			response.sendRedirect("AuthorizedRep");
		}		
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
