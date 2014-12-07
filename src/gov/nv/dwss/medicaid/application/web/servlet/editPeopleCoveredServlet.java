package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HealthInsuranceInfoBean;
import gov.nv.dwss.medicaid.application.web.model.HealthInsuranceInfo;
import gov.nv.dwss.medicaid.application.web.model.InsuranceFromJobs;
import gov.nv.dwss.medicaid.application.web.model.PeopleCovered;
import gov.nv.dwss.medicaid.application.web.model.PeopleCoveredJSON;
import gov.nv.dwss.medicaid.application.web.utils.FormatHelpers;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * Servlet implementation class editPeopleCoveredServlet
 */
public class editPeopleCoveredServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private HealthInsuranceInfoBean healthInsuranceInfoBean;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HealthInsuranceInfo healthInsuranceInfo = healthInsuranceInfoBean.getHealthInsuranceInfo();
		List<InsuranceFromJobs> insuranceFromJobs = healthInsuranceInfo.getInsuranceFromJobs();
		int index = (request.getParameter("insuranceIndex") != null ? Integer.parseInt(request.getParameter("insuranceIndex")) : -1);
		
		InsuranceFromJobs insurance = (index >= 0 ? insuranceFromJobs.get(index) : new InsuranceFromJobs());
		List<PeopleCovered> peopleCovered = 
				(insurance.getPeopleCovered() != null ? insurance.getPeopleCovered() : new ArrayList<PeopleCovered>());
		
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
		String json = null;
		
		if(br != null) {
			json = br.readLine();
		}
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			PeopleCoveredJSON formValue = mapper.readValue(json, PeopleCoveredJSON.class);
			
			PeopleCovered item = new PeopleCovered();
			item.setCoverageDropDate(FormatHelpers.formatDate(formValue.getCoverageDropDate()));
			item.setEligibilityStartDate(FormatHelpers.formatDate(formValue.getEligibilityStartDate()));
			item.setEnrollmentStartDate(FormatHelpers.formatDate(formValue.getEnrollmentStartDate()));
			item.setEnrollmentStatus(formValue.getEnrollmentStatus());
			item.setFirstName(formValue.getFirstName());
			item.setMiddleName(formValue.getMiddleName());
			item.setLastName(formValue.getLastName());
			item.setFutureChanges(formValue.getFutureChanges());
			
			peopleCovered.add(item);
			insurance.setPeopleCovered(peopleCovered);
			
			if(index >= 0) {
				insuranceFromJobs.set(index, insurance);
			} else {
				insuranceFromJobs.add(insurance);
			}
			
			healthInsuranceInfo.setInsuranceFromJobs(insuranceFromJobs);
			healthInsuranceInfoBean.updateHealthInsuranceInfo(healthInsuranceInfo);			
			
			mapper.writeValue(response.getOutputStream(), peopleCovered);
			
		} catch (Exception ex) {
			response.setStatus(500);
		}		
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
