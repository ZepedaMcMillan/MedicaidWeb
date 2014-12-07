package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HealthInsuranceInfoBean;
import gov.nv.dwss.medicaid.application.web.model.HealthInsuranceInfo;
import gov.nv.dwss.medicaid.application.web.model.InsuranceFromJobs;
import gov.nv.dwss.medicaid.application.web.model.PeopleCovered;

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
 * Servlet implementation class DeletePeopleCoveredServlet
 */
public class DeletePeopleCoveredServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;	

	@Autowired
	private HealthInsuranceInfoBean healthInsuranceInfoBean;     

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HealthInsuranceInfo healthInsuranceInfo = healthInsuranceInfoBean.getHealthInsuranceInfo();
		List<InsuranceFromJobs> insuranceList = healthInsuranceInfo.getInsuranceFromJobs();		
		
		int insIndex = (request.getParameter("insIndex") != null ? Integer.parseInt(request.getParameter("insIndex")) : -1);
		int index = (request.getParameter("itemIndex") != null ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		
		if(insIndex >=0 && index >= 0) {
			InsuranceFromJobs insuranceFromJobs = insuranceList.get(insIndex);
			List<PeopleCovered> peopleList = insuranceFromJobs.getPeopleCovered();
			peopleList.remove(index);
			insuranceFromJobs.setPeopleCovered(peopleList);
			insuranceList.set(insIndex, insuranceFromJobs);
			healthInsuranceInfo.setInsuranceFromJobs(insuranceList);
			healthInsuranceInfoBean.updateHealthInsuranceInfo(healthInsuranceInfo);
		}
		
		response.sendRedirect("HealthInsuranceDetail?itemIndex="+insIndex);
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
