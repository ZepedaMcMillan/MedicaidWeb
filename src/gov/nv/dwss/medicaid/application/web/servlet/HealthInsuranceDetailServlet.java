package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HealthInsuranceInfoBean;
import gov.nv.dwss.medicaid.application.web.model.Address;
import gov.nv.dwss.medicaid.application.web.model.HealthInsuranceInfo;
import gov.nv.dwss.medicaid.application.web.model.InsuranceFromJobs;
import gov.nv.dwss.medicaid.application.web.model.JobInsuranceContact;
import gov.nv.dwss.medicaid.application.web.model.PeopleCovered;
import gov.nv.dwss.medicaid.application.web.utils.FormatHelpers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.axis.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

public class HealthInsuranceDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private HealthInsuranceInfoBean healthInsuranceInfoBean;
     

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HealthInsuranceInfo healthInsuranceInfo = healthInsuranceInfoBean.getHealthInsuranceInfo();
		List<InsuranceFromJobs> insuranceItems = 
				(healthInsuranceInfo.getInsuranceFromJobs() != null ? healthInsuranceInfo.getInsuranceFromJobs() : new ArrayList<InsuranceFromJobs>());
		int index = 
				(!StringUtils.isEmpty(request.getParameter("itemIndex")) ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		InsuranceFromJobs insuranceFromJobs = (index >= 0 ? insuranceItems.get(index) : new InsuranceFromJobs());
		List<PeopleCovered> peopleCovered = 
				(insuranceFromJobs.getPeopleCovered() != null ? insuranceFromJobs.getPeopleCovered() : new ArrayList<PeopleCovered>());
		
		healthInsuranceInfo.setInsuranceFromJobs(insuranceItems);
		healthInsuranceInfoBean.updateHealthInsuranceInfo(healthInsuranceInfo);
		
		request.setAttribute("info", insuranceFromJobs);
		request.setAttribute("peopleCovered", peopleCovered);
		request.setAttribute("itemIndex", index);

		request.getRequestDispatcher("HealthInsuranceDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HealthInsuranceInfo healthInsuranceInfo = healthInsuranceInfoBean.getHealthInsuranceInfo();
		List<InsuranceFromJobs> insuranceItems = 
				(healthInsuranceInfo.getInsuranceFromJobs() != null ? healthInsuranceInfo.getInsuranceFromJobs() : new ArrayList<InsuranceFromJobs>());
		
		int index = (!StringUtils.isEmpty(request.getParameter("itemIndex")) ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		InsuranceFromJobs insuranceFromJobs = (index >= 0 ? insuranceItems.get(index) : new InsuranceFromJobs());
		insuranceFromJobs.setCoverageDate(FormatHelpers.formatDate(request.getParameter("coverageDate")));
		insuranceFromJobs.setEmployeeName(request.getParameter("employeeName"));
		insuranceFromJobs.setEmployeeSSN(request.getParameter("employeeSSN"));
		
		insuranceFromJobs.setEmployerEIN(request.getParameter("employerEIN"));
		insuranceFromJobs.setEmployerName(request.getParameter("employerName"));
		insuranceFromJobs.setEmployerPhone(request.getParameter("employerPhone"));
		insuranceFromJobs.setFamilyMembersCovered(request.getParameterValues("familyMembersCovered"));
		insuranceFromJobs.setIsCoveredNext3Months(request.getParameter("isCoveredNext3Months"));
		insuranceFromJobs.setIsEligible(request.getParameter("isEligible"));
		insuranceFromJobs.setLowCostPremium(request.getParameter("lowCostPremium"));
		insuranceFromJobs.setMeetsMinimumStandards(request.getParameter("meetsMinimumStandards"));
		insuranceFromJobs.setPremiumFrequency(request.getParameter("premiumFrequency"));

		Address employerAddress = new Address();
		employerAddress.setStreet(request.getParameter("street"));
		employerAddress.setCity(request.getParameter("city"));
		employerAddress.setState(request.getParameter("state"));
		employerAddress.setZip(request.getParameter("zip"));
		insuranceFromJobs.setEmployerAddress(employerAddress);
		
		JobInsuranceContact jobInsuranceContact = new JobInsuranceContact();
		jobInsuranceContact.setName(request.getParameter("name"));
		jobInsuranceContact.setEmail(request.getParameter("email"));
		jobInsuranceContact.setPhone(request.getParameter("phone"));
		insuranceFromJobs.setJobInsuranceContact(jobInsuranceContact);
		
		if(index >= 0) {
			insuranceItems.set(index, insuranceFromJobs);
		} else {
			insuranceItems.add(insuranceFromJobs);
		}
		
		if(request.getParameter("customAction").equalsIgnoreCase("add")) {
			response.sendRedirect("HealthInsuranceDetail?itemIndex="+index);
		} else if(request.getParameter("customAction").equalsIgnoreCase("editPerson")) {
			response.sendRedirect("PeopleCoveredDetail?itemIndex="+index);
		} else if(request.getParameter("customAction").equalsIgnoreCase("deletePerson")) {
			response.sendRedirect("DeletePeopleCovered?itemIndex="+index);
		}else {
			response.sendRedirect("HealthInsuranceInformation");
		}		
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}