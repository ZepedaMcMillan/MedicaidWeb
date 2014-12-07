package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HouseHoldInformationBean;
import gov.nv.dwss.medicaid.application.web.bean.NavigationBean;
import gov.nv.dwss.medicaid.application.web.model.GeneralInfo;
import gov.nv.dwss.medicaid.application.web.model.HouseHoldInfo;
import gov.nv.dwss.medicaid.application.web.model.MemberInfo;
import gov.nv.dwss.medicaid.application.web.model.OtherAssistance;
import gov.nv.dwss.medicaid.application.web.utils.FormatHelpers;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * Servlet implementation class GeneralInformationServlet
 */
public class GeneralInformationServlet extends HttpServlet {
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
		int index = (request.getParameter("memberIndex") != null ? Integer.parseInt(request.getParameter("memberIndex")) : 0);
		
		request.setAttribute("memberIndex", index);
		
		MemberInfo memberInfo = memberList.get(index);		
		OtherAssistance otherAssistance = memberInfo.getOtherAssistance();
		
		if(otherAssistance == null) {
			otherAssistance = new OtherAssistance();
		}
		
		request.setAttribute("memberList", memberList);
		request.setAttribute("memberInfo", memberInfo);		

		navBean.setNavItemSelected("General");		
		request.setAttribute("navBean", navBean);
		
		request.getRequestDispatcher("GeneralInformation.jsp").forward(request, response);		
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
		GeneralInfo generalInfo = memberInfo.getGeneralInfo();
		OtherAssistance otherAssistance = memberInfo.getOtherAssistance();
		
		if(otherAssistance == null) {
			otherAssistance = new OtherAssistance();
		}
		
		generalInfo.setMaritalStatus(request.getParameter("maritalStatus"));
		generalInfo.setLivesWithSpouse(request.getParameter("livesWithSpouse"));
		generalInfo.setSsn(request.getParameter("ssn"));
		generalInfo.setIsPregnant(request.getParameter("isPregnant"));
		Date pregnancyDate = FormatHelpers.formatDate(request.getParameter("pregnancyDueDate"));
		generalInfo.setPregnancyDueDate(pregnancyDate);
		generalInfo.setNumberOfBabies(request.getParameter("numberOfBabies"));		
		memberInfo.setGeneralInfo(generalInfo);
		
		otherAssistance.setIsDisabledBlind(request.getParameter("isDisabledBlind"));
		otherAssistance.setHasSSI(request.getParameter("hasSSI"));
		otherAssistance.setNeedsDailyAssistance(request.getParameter("needsDailyAssistance"));
		memberInfo.setOtherAssistance(otherAssistance);
		
		memberList.set(index, memberInfo);
		info.setMemberInfo(memberList);
		houseHoldInfoBean.updateHouseholdInfo(info);
		
		if(request.getParameter("customAction").equalsIgnoreCase("update")) {
			response.sendRedirect("GeneralInformation?memberIndex=" + newIndex);
		}  else {
			response.sendRedirect("TaxInformation?memberIndex=" + newIndex);
		}		
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
