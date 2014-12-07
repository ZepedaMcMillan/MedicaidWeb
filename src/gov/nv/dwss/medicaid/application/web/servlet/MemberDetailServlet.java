package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HouseHoldInformationBean;
import gov.nv.dwss.medicaid.application.web.bean.NavigationBean;
import gov.nv.dwss.medicaid.application.web.model.GeneralInfo;
import gov.nv.dwss.medicaid.application.web.model.HouseHoldInfo;
import gov.nv.dwss.medicaid.application.web.model.MemberInfo;
import gov.nv.dwss.medicaid.application.web.utils.FormatHelpers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.axis.utils.StringUtils;
import org.joda.time.DateTime;
import org.joda.time.Years;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * Servlet implementation class MemberInfoDetailServlet
 */
public class MemberDetailServlet extends HttpServlet {
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
		List<MemberInfo> memberList = houseHoldInfo.getMemberInfo();		
		int index = (!StringUtils.isEmpty(request.getParameter("itemIndex")) ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		
		MemberInfo memberInfo = (index >=0 ? memberList.get(index) : new MemberInfo());
		GeneralInfo generalInfo = (memberInfo.getGeneralInfo() != null ? memberInfo.getGeneralInfo() : new GeneralInfo());
		
		request.setAttribute("info", generalInfo);
		request.setAttribute("memberList", memberList);
		request.setAttribute("itemIndex", index);
		navBean.setNavItemSelected("HouseHold");
		request.setAttribute("navBean", navBean);

		request.getRequestDispatcher("MemberDetail.jsp").forward(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HouseHoldInfo houseHoldInfo = houseHoldInfoBean.getHouseholdInfo();
		List<MemberInfo> memberList = houseHoldInfo.getMemberInfo();
		
		int index = 
				(!StringUtils.isEmpty(request.getParameter("itemIndex")) ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		int newIndex = 
				(!StringUtils.isEmpty(request.getParameter("newIndex")) ? Integer.parseInt(request.getParameter("newIndex")) : index);
		
		MemberInfo memberInfo = (index >= 0 ? memberList.get(index) : new MemberInfo());
		GeneralInfo generalInfo = (memberInfo.getGeneralInfo() != null ? memberInfo.getGeneralInfo() : new GeneralInfo());
		generalInfo.setBirthDate(FormatHelpers.formatDate(request.getParameter("birthDate")));
		generalInfo.setFirstName(request.getParameter("firstName"));
		generalInfo.setMiddleName(request.getParameter("middleName"));
		generalInfo.setLastName(request.getParameter("lastName"));
		generalInfo.setGender(request.getParameter("gender"));
		generalInfo.setRelationship(request.getParameter("relationship"));		
		
		// set age for icon population
		int age = 0;
		if(generalInfo.getBirthDate() != null) {
			DateTime dob = new DateTime(generalInfo.getBirthDate());
			DateTime now = new DateTime();
			age = Years.yearsBetween(dob, now).getYears();
		}
		generalInfo.setAge(age);
		
		memberInfo.setGeneralInfo(generalInfo);
		if(index >= 0) {
			memberList.set(index, memberInfo);
		} else {
			memberList.add(memberInfo);
		}
		
		houseHoldInfo.setMemberInfo(memberList);
		houseHoldInfoBean.updateHouseholdInfo(houseHoldInfo);
		
		if(request.getParameter("customAction").equalsIgnoreCase("update")) {
			response.sendRedirect("MemberDetail?itemIndex=" + newIndex);
		}  else {
			response.sendRedirect("HouseHoldInformation");
		}	
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
