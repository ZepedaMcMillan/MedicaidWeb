package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HealthInsuranceInfoBean;
import gov.nv.dwss.medicaid.application.web.model.HealthInsuranceInfo;
import gov.nv.dwss.medicaid.application.web.model.OtherInsurance;
import gov.nv.dwss.medicaid.application.web.model.OtherInsuranceItem;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
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
 * Servlet implementation class editOtherInsuranceServlet
 */
public class editOtherInsuranceServlet extends HttpServlet {
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
		OtherInsurance otherInsurance = healthInsuranceInfo.getOtherInsurance();
		List<OtherInsuranceItem> otherInsuranceDetails = otherInsurance.getOtherInsuranceDetails();
		
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
		String json = null;
		
		if(br != null) {
			json = br.readLine();
		}
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			OtherInsuranceItem item = mapper.readValue(json, OtherInsuranceItem.class);
			otherInsuranceDetails.add(item);
			otherInsurance.setOtherInsuranceDetails(otherInsuranceDetails);
			healthInsuranceInfo.setOtherInsurance(otherInsurance);
			healthInsuranceInfoBean.updateHealthInsuranceInfo(healthInsuranceInfo);
			
			mapper.writeValue(response.getOutputStream(), otherInsuranceDetails);
			
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
