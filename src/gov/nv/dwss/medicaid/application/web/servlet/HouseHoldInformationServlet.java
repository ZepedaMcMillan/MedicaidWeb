package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HouseHoldInformationBean;
import gov.nv.dwss.medicaid.application.web.bean.NavigationBean;
import gov.nv.dwss.medicaid.application.web.model.ContactInfo;
import gov.nv.dwss.medicaid.application.web.model.GeneralInfo;
import gov.nv.dwss.medicaid.application.web.model.HouseHoldInfo;
import gov.nv.dwss.medicaid.application.web.model.MemberInfo;
import gov.nv.dwss.medicaid.application.web.utils.FormatHelpers;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.DateTime;
import org.joda.time.Years;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * Servlet implementation class HouseHoldInformationServlet
 */
public class HouseHoldInformationServlet extends HttpServlet {
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
		
		request.setAttribute("hh", houseHoldInfo);	
		navBean.setNavItemSelected("HouseHold");
		request.setAttribute("navBean", navBean);
		request.getRequestDispatcher("HouseHoldInformation.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		HouseHoldInfo houseHoldInfo = houseHoldInfoBean.getHouseholdInfo();
		
		List<MemberInfo> members = houseHoldInfo.getMemberInfo();		
		MemberInfo head = members.get(0);
		GeneralInfo generalInfo = (head.getGeneralInfo() != null ? head.getGeneralInfo() : new GeneralInfo());
		
		ContactInfo contactInfo = houseHoldInfo.getContactInfo();	
		contactInfo.setFirstName(request.getParameter("firstName"));
		generalInfo.setFirstName(request.getParameter("firstName"));
		contactInfo.setMiddleName(request.getParameter("middleName"));
		generalInfo.setMiddleName(request.getParameter("middleName"));
		contactInfo.setLastName(request.getParameter("lastName"));
		generalInfo.setLastName(request.getParameter("lastName"));
		contactInfo.setSuffix(request.getParameter("suffix"));
		Date birthDate = FormatHelpers.formatDate(request.getParameter("birthDate"));		
		contactInfo.setBirthDate(birthDate);		
		generalInfo.setBirthDate(birthDate);
		contactInfo.setGender(request.getParameter("gender"));
		generalInfo.setGender(request.getParameter("gender"));
		houseHoldInfo.setHouseHoldMembers(FormatHelpers.formatBool(request.getParameter("houseHoldMembers")));
		head.setIsCaseHOH(true);
		
		// set age for icon population
		int age = 0;
		if(birthDate != null) {
			DateTime dob = new DateTime(birthDate);
			DateTime now = new DateTime();
			age = Years.yearsBetween(dob, now).getYears();
		}
		generalInfo.setAge(age);
		
		generalInfo.setRelationship("Self");
		head.setGeneralInfo(generalInfo);
		members.set(0, head);
		houseHoldInfo.setMemberInfo(members);
		houseHoldInfo.setContactInfo(contactInfo);	
		
		// update the bean values
		houseHoldInfoBean.updateHouseholdInfo(houseHoldInfo);
		
		if(request.getParameter("customAction").equalsIgnoreCase("update")) {
			response.sendRedirect("HouseHoldInformation");
		} 
		else if (request.getParameter("customAction").equalsIgnoreCase("editMember")) {
			response.sendRedirect("MemberDetail?itemIndex="+request.getParameter("memberIndex"));		
		} else if (request.getParameter("customAction").equalsIgnoreCase("deleteMember")) { 
			response.sendRedirect("DeleteMember?itemIndex="+request.getParameter("memberIndex"));
		} else {
			response.sendRedirect("ContactInformation");
		}
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
