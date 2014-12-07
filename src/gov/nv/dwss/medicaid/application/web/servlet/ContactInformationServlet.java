package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.model.Address;
import gov.nv.dwss.medicaid.application.web.model.ContactInfo;
import gov.nv.dwss.medicaid.application.web.model.HouseHoldInfo;
import gov.nv.dwss.medicaid.application.web.bean.HouseHoldInformationBean;
import gov.nv.dwss.medicaid.application.web.bean.NavigationBean;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * Servlet implementation class ContactInfoServlet
 */
public class ContactInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	@Autowired
	private HouseHoldInformationBean houseHoldInfoBean;
	
	@Autowired
	private NavigationBean navBean;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HouseHoldInfo houseHoldInfo = houseHoldInfoBean.getHouseholdInfo();
		ContactInfo contactInfo = (houseHoldInfo.getContactInfo() != null ? houseHoldInfo.getContactInfo() : new ContactInfo());
		houseHoldInfo.setContactInfo(contactInfo);
		
		request.setAttribute("contact", contactInfo);
		
		navBean.setNavItemSelected("Contact");		
		request.setAttribute("navBean", navBean);
		request.getRequestDispatcher("ContactInformation.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		HouseHoldInfo houseHoldInfo = houseHoldInfoBean.getHouseholdInfo();
		ContactInfo contactInfo = houseHoldInfo.getContactInfo();
	
		// Physical Address
		Address householdAddress = new Address();
		householdAddress.setStreet(request.getParameter("street"));
		householdAddress.setApartment(request.getParameter("apartment"));
		householdAddress.setCity(request.getParameter("city"));
		householdAddress.setState(request.getParameter("state"));
		householdAddress.setZip(request.getParameter("zip"));
		contactInfo.setHouseholdAddress(householdAddress);
		
		contactInfo.setIsMailingAddress(request.getParameter("isMailingAddress"));
		
		// Mailing Address
		Address mailAddress = new Address();
		mailAddress.setStreet(request.getParameter("mailStreet"));
		mailAddress.setApartment(request.getParameter("mailApartment"));
		mailAddress.setCity(request.getParameter("mailCity"));
		mailAddress.setState(request.getParameter("mailState"));
		mailAddress.setZip(request.getParameter("mailZip"));
		contactInfo.setMailingAddress(mailAddress);		

		contactInfo.setPrimaryPhone(request.getParameter("primaryPhone"));
		contactInfo.setPrimaryExtension(request.getParameter("primaryExtension"));
		
		contactInfo.setIsEmailNeeded(request.getParameter("isEmailNeeded"));
		contactInfo.setEmailAddress(request.getParameter("emailAddress"));
		
		contactInfo.setIsEnglishPreferred(request.getParameter("isEnglishPreferred"));
		contactInfo.setSpanishOrOther(request.getParameter("spanishOrOther"));
		contactInfo.setOtherLanguage(request.getParameter("otherLanguage"));
		
		contactInfo.setIsInterpreterNeeded(request.getParameter("isInterpreterNeeded"));
		
		houseHoldInfo.setContactInfo(contactInfo);		
		response.sendRedirect("GeneralInformation");		
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
