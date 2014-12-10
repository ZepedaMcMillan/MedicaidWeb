package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HouseHoldInformationBean;
import gov.nv.dwss.medicaid.application.web.bean.NavigationBean;
import gov.nv.dwss.medicaid.application.web.model.HouseHoldInfo;
import gov.nv.dwss.medicaid.application.web.model.MemberInfo;
import gov.nv.dwss.medicaid.application.web.model.OtherAssistance;
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
 * Servlet implementation class OtherAssistanceServlet
 */
public class OtherAssistanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private HouseHoldInformationBean houseHoldInfoBean;
	
	@Autowired
	private NavigationBean navBean;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HouseHoldInfo info = houseHoldInfoBean.getHouseholdInfo();	
		List<MemberInfo> memberList = info.getMemberInfo();		
		String memberIndex = (request.getParameter("memberIndex") != null ? request.getParameter("memberIndex") : "0");
		
		request.setAttribute("memberIndex", memberIndex);
		int index = Integer.parseInt(memberIndex);
		
		MemberInfo memberInfo = memberList.get(index);	
		OtherAssistance otherAssistance = memberInfo.getOtherAssistance();
		
		if(otherAssistance == null) {
			otherAssistance = new OtherAssistance();
		}
		
		request.setAttribute("memberList", memberList);
		request.setAttribute("otherAssistance", otherAssistance);
		navBean.setNavItemSelected("OtherAssistance");
		request.setAttribute("navBean", navBean);		
		
		request.getRequestDispatcher("OtherAssistance.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HouseHoldInfo info = houseHoldInfoBean.getHouseholdInfo();	
		List<MemberInfo> memberList = info.getMemberInfo();		

		int index = 
				(request.getParameter("memberIndex") != null ? Integer.parseInt(request.getParameter("memberIndex")) : 0);		
		int newIndex = 
				(request.getParameter("newMemberIndex") != null ? Integer.parseInt(request.getParameter("newMemberIndex")) : index);
		
		MemberInfo memberInfo = memberList.get(index);
		OtherAssistance otherAssistance = memberInfo.getOtherAssistance();
		
		if(otherAssistance == null) {
			otherAssistance = new OtherAssistance();
		}
		
		otherAssistance.setApplyingForOther(FormatHelpers.formatBool(request.getParameter("applyingForOther")));
		otherAssistance.setSsn(request.getParameter("ssn"));
		otherAssistance.setHasPublicEmployeeCoverage(FormatHelpers.formatBool(request.getParameter("hasPublicEmployeeCoverage")));
		otherAssistance.setIsUSCitizen(FormatHelpers.formatBool(request.getParameter("isUSCitizen")));
		otherAssistance.setLivedSince1996(FormatHelpers.formatBool(request.getParameter("livedSince1996")));
		otherAssistance.setHasEligibleImmigration(FormatHelpers.formatBool(request.getParameter("hasEligibleImmigration")));
		otherAssistance.setImmigrationType(request.getParameter("immigrationType"));
		otherAssistance.setImmigrationIdNumber(request.getParameter("immigrationIdNumber"));
		otherAssistance.setIsVeteran(FormatHelpers.formatBool(request.getParameter("isVeteran")));
		otherAssistance.setIsStudent(FormatHelpers.formatBool(request.getParameter("isStudent")));
		otherAssistance.setIsNative(FormatHelpers.formatBool(request.getParameter("isNative")));
		otherAssistance.setTribe(request.getParameter("tribe"));
		otherAssistance.setBeenInFosterCare(FormatHelpers.formatBool(request.getParameter("beenInFosterCare")));
		otherAssistance.setStateFosterCare(request.getParameter("stateFosterCare"));
		otherAssistance.setAgeWhenLeft(request.getParameter("ageWhenLeft"));
		otherAssistance.setReceivedHealthcare(FormatHelpers.formatBool(request.getParameter("receivedHealthcare")));
		otherAssistance.setIsPrimaryCareTaker(FormatHelpers.formatBool(request.getParameter("isPrimaryCareTaker")));
		otherAssistance.setChildCare(request.getParameter("childCare"));
		// TODO: implement children list interface for caretaker who
		// was not implemented in original code
		
		otherAssistance.setHasPastMedicalBills(FormatHelpers.formatBool(request.getParameter("hasPastMedicalBills")));
		otherAssistance.setBillMonths(request.getParameter("hasPastMedicalBills"));
		
		
		memberInfo.setOtherAssistance(otherAssistance);
		
		memberList.set(index, memberInfo);
		info.setMemberInfo(memberList);
		houseHoldInfoBean.updateHouseholdInfo(info);
		
		if(request.getParameter("customAction").equalsIgnoreCase("update")) {
			response.sendRedirect("OtherAssistance?memberIndex=" + newIndex);
		}  else {
			response.sendRedirect("MemberIncome?memberIndex=" + newIndex);
		}
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
