package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HealthInsuranceInfoBean;
import gov.nv.dwss.medicaid.application.web.model.HealthInsuranceInfo;
import gov.nv.dwss.medicaid.application.web.model.InsuranceFromJobs;
import gov.nv.dwss.medicaid.application.web.model.PeopleCovered;
import gov.nv.dwss.medicaid.application.web.utils.FormatHelpers;

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
 * Servlet implementation class PeopleCoveredDetailServlet
 */
public class PeopleCoveredDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;	

	@Autowired
	private HealthInsuranceInfoBean healthInsuranceInfoBean;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HealthInsuranceInfo healthInsuranceInfo = healthInsuranceInfoBean.getHealthInsuranceInfo();
		List<InsuranceFromJobs> insuranceList = healthInsuranceInfo.getInsuranceFromJobs();		
		
		int insIndex = (Integer.parseInt(request.getParameter("insIndex")));
		int index = (request.getParameter("itemIndex") != null ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		
		InsuranceFromJobs insuranceFromJobs = insuranceList.get(insIndex);
		List<PeopleCovered> peopleList = insuranceFromJobs.getPeopleCovered();
		PeopleCovered peopleCovered = (index >=0 ? peopleList.get(index) : new PeopleCovered());
		
		request.setAttribute("insIndex", insIndex);
		request.setAttribute("itemIndex", index);
		request.setAttribute("info", peopleCovered);
		
		request.getRequestDispatcher("PeopleCoveredDetail.jsp").forward(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HealthInsuranceInfo healthInsuranceInfo = healthInsuranceInfoBean.getHealthInsuranceInfo();
		List<InsuranceFromJobs> insuranceList = healthInsuranceInfo.getInsuranceFromJobs();		
		
		int insIndex = (Integer.parseInt(request.getParameter("insIndex")));
		int index = (request.getParameter("itemIndex") != null ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		
		InsuranceFromJobs insuranceFromJobs = insuranceList.get(insIndex);
		List<PeopleCovered> peopleList = insuranceFromJobs.getPeopleCovered();
		PeopleCovered peopleCovered = (index >=0 ? peopleList.get(index) : new PeopleCovered());
		
		peopleCovered.setFirstName(request.getParameter("firstName"));
		peopleCovered.setMiddleName(request.getParameter("middleName"));
		peopleCovered.setLastName(request.getParameter("lastName"));
		peopleCovered.setCoverageDropDate(FormatHelpers.formatDate(request.getParameter("coverageDropDate")));
		peopleCovered.setEligibilityStartDate(FormatHelpers.formatDate(request.getParameter("eligibilityStartDate")));
		peopleCovered.setEnrollmentStartDate(FormatHelpers.formatDate(request.getParameter("enrollmentStartDate")));
		peopleCovered.setEnrollmentStatus(request.getParameter("enrollmentStatus"));
		peopleCovered.setFutureChanges(request.getParameter("futureChanges"));
		
		if(index>=0){
			peopleList.set(index, peopleCovered);
		} else {
			peopleList.add(peopleCovered);
		}
		
		insuranceFromJobs.setPeopleCovered(peopleList);
		insuranceList.set(insIndex, insuranceFromJobs);
		healthInsuranceInfo.setInsuranceFromJobs(insuranceList);
		healthInsuranceInfoBean.updateHealthInsuranceInfo(healthInsuranceInfo);
		
		response.sendRedirect("HealthInsuranceDetail?itemIndex="+insIndex);
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
