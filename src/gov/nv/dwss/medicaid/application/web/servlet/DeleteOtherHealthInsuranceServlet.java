package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HealthInsuranceInfoBean;
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

import org.apache.axis.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * Servlet implementation class DeleteOtherInsuranceServlet
 */
public class DeleteOtherHealthInsuranceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Autowired
	private HealthInsuranceInfoBean healthInsuranceInfoBean;  

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		deleteOtherInsurance(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		deleteOtherInsurance(request, response);
	}
	
	private void deleteOtherInsurance(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HealthInsuranceInfo healthInsuranceInfo = healthInsuranceInfoBean.getHealthInsuranceInfo();
		OtherInsurance otherInsurance = healthInsuranceInfo.getOtherInsurance();
		
		List<OtherInsuranceItem> otherInsuranceDetails = 
				(otherInsurance.getOtherInsuranceDetails() != null ? otherInsurance.getOtherInsuranceDetails() : new ArrayList<OtherInsuranceItem>());
		int index = (!StringUtils.isEmpty(request.getParameter("itemIndex")) ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		
		if(index >= 0) {
			otherInsuranceDetails.remove(index);
			otherInsurance.setOtherInsuranceDetails(otherInsuranceDetails);
			healthInsuranceInfo.setOtherInsurance(otherInsurance);
			healthInsuranceInfoBean.updateHealthInsuranceInfo(healthInsuranceInfo);
		}
		
		response.sendRedirect("OtherHealthInsurance");
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }

}
