package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HealthInsuranceInfoBean;
import gov.nv.dwss.medicaid.application.web.model.HealthInsuranceInfo;
import gov.nv.dwss.medicaid.application.web.model.InsuranceFromJobs;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * Servlet implementation class DeleteHealthInsuranceInfoServlet
 */
public class DeleteHealthInsuranceInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;	

	@Autowired
	private HealthInsuranceInfoBean healthInsuranceInfoBean;       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HealthInsuranceInfo healthInsuranceInfo = healthInsuranceInfoBean.getHealthInsuranceInfo();
		List<InsuranceFromJobs> insuranceList = healthInsuranceInfo.getInsuranceFromJobs();		
		
		int index = (request.getParameter("insIndex") != null ? Integer.parseInt(request.getParameter("insIndex")) : -1);
		
		if(index >= 0) {
			insuranceList.remove(index);
			healthInsuranceInfo.setInsuranceFromJobs(insuranceList);
			healthInsuranceInfoBean.updateHealthInsuranceInfo(healthInsuranceInfo);
		}
		
		response.sendRedirect("HealthInsuranceInfo");
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
