package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HealthInsuranceInfoBean;
import gov.nv.dwss.medicaid.application.web.model.HealthInsuranceInfo;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.axis.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * Servlet implementation class HealthInsuranceInformation
 */
public class HealthInsuranceInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private HealthInsuranceInfoBean healthInsuranceInfoBean;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HealthInsuranceInfo healthInsuranceInfo = healthInsuranceInfoBean.getHealthInsuranceInfo();
		
		request.setAttribute("info", healthInsuranceInfo);
		request.getRequestDispatcher("HealthInsuranceInformation.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HealthInsuranceInfo healthInsuranceInfo = healthInsuranceInfoBean.getHealthInsuranceInfo();
		healthInsuranceInfo.setHasHealthCoverage(request.getParameter("hasHealthCoverage"));
		healthInsuranceInfoBean.updateHealthInsuranceInfo(healthInsuranceInfo);
		
		int index = 
				(!StringUtils.isEmpty(request.getParameter("itemIndex")) ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		
		if(request.getParameter("customAction").equalsIgnoreCase("editInsurance")) {
			response.sendRedirect("HealthInsuranceDetail?itemIndex="+index);
		} else if(request.getParameter("customAction").equalsIgnoreCase("deleteInsurance")) {
			response.sendRedirect("DeleteHealthInsuranceInfo?itemIndex="+index);
		} else {					
			response.sendRedirect("OtherHealthInsurance");
		}		
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
