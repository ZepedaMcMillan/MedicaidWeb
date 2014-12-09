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

import org.apache.axis.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * Servlet implementation class OtherHealthInsuranceDetail
 */
public class OtherHealthInsuranceDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private HealthInsuranceInfoBean healthInsuranceInfoBean;
	
	@Autowired
	private NavigationBean navBean;
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HealthInsuranceInfo healthInsuranceInfo = healthInsuranceInfoBean.getHealthInsuranceInfo();
		OtherInsurance otherInsurance = healthInsuranceInfo.getOtherInsurance();
		
		List<OtherInsuranceItem> otherInsuranceDetails = 
				(otherInsurance.getOtherInsuranceDetails() != null ? otherInsurance.getOtherInsuranceDetails() : new ArrayList<OtherInsuranceItem>());

		int index = (!StringUtils.isEmpty(request.getParameter("itemIndex")) ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		OtherInsuranceItem otherInsuranceItem = (index >= 0 ? otherInsuranceDetails.get(index) : new OtherInsuranceItem());
		
		request.setAttribute("info", otherInsuranceItem);
		request.setAttribute("itemIndex", index);		

		navBean.setNavItemSelected("OtherInsurance");
		request.setAttribute("navBean", navBean);
		request.getRequestDispatcher("OtherHealthInsuranceDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HealthInsuranceInfo healthInsuranceInfo = healthInsuranceInfoBean.getHealthInsuranceInfo();
		OtherInsurance otherInsurance = healthInsuranceInfo.getOtherInsurance();
		
		List<OtherInsuranceItem> otherInsuranceDetails = 
				(otherInsurance.getOtherInsuranceDetails() != null ? otherInsurance.getOtherInsuranceDetails() : new ArrayList<OtherInsuranceItem>());

		int index = (!StringUtils.isEmpty(request.getParameter("itemIndex")) ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		OtherInsuranceItem otherInsuranceItem = (index >= 0 ? otherInsuranceDetails.get(index) : new OtherInsuranceItem());
		otherInsuranceItem.setInsuranceType(request.getParameter("insuranceType"));
		otherInsuranceItem.setName(request.getParameter("name"));
		otherInsuranceItem.setPlanName(request.getParameter("planName"));
		otherInsuranceItem.setPolicyNumber(request.getParameter("policyNumber"));
		
		if(index >= 0) {
			otherInsuranceDetails.set(index, otherInsuranceItem);
		} else {
			otherInsuranceDetails.add(otherInsuranceItem);
		}
		
		otherInsurance.setOtherInsuranceDetails(otherInsuranceDetails);
		healthInsuranceInfo.setOtherInsurance(otherInsurance);
		healthInsuranceInfoBean.updateHealthInsuranceInfo(healthInsuranceInfo);
		
		response.sendRedirect("OtherHealthInsurance");
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }

}
