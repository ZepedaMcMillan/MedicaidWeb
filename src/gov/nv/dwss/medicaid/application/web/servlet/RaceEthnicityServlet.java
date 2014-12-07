package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HouseHoldInformationBean;
import gov.nv.dwss.medicaid.application.web.model.HouseHoldInfo;
import gov.nv.dwss.medicaid.application.web.model.MemberInfo;
import gov.nv.dwss.medicaid.application.web.model.RaceEthnicity;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * Servlet implementation class RaceEthnicityServlet
 */
public class RaceEthnicityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private HouseHoldInformationBean houseHoldInfoBean;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		HouseHoldInfo info = houseHoldInfoBean.getHouseholdInfo();	
		List<MemberInfo> memberList = info.getMemberInfo();		
		String memberIndex = (request.getParameter("memberIndex") != null ? request.getParameter("memberIndex") : "0");
		
		request.setAttribute("memberIndex", memberIndex);
		int index = Integer.parseInt(memberIndex);	
		

		request.setAttribute("memberList", memberList);	
		
		MemberInfo memberInfo = memberList.get(index);
		request.setAttribute("memberInfo", memberInfo);

		RaceEthnicity raceEthnicity = (memberInfo.getRaceEthnicity() != null ? memberInfo.getRaceEthnicity() : new RaceEthnicity());
		
		// Check box hack
		List<String> hispanicCategory = 
				(raceEthnicity.getHispanicCategory() != null ? Arrays.asList(raceEthnicity.getHispanicCategory()): new ArrayList<String>());
		request.setAttribute("Mexican", hispanicCategory.contains("Mexican") ? "checked" : "");
		request.setAttribute("MexicanAmerican", hispanicCategory.contains("Mexican American") ? "checked" : "");
		request.setAttribute("PuertoRican", hispanicCategory.contains("Puerto Rican") ? "checked" : "");
		request.setAttribute("Cuban", hispanicCategory.contains("Cuban") ? "checked" : "");
		request.setAttribute("Chicano", hispanicCategory.contains("Chicano") ? "checked" : "");
		request.setAttribute("hispanicOther", hispanicCategory.contains("other") ? "checked" : "");
		
		List<String> race = (raceEthnicity.getRace() != null ? Arrays.asList(raceEthnicity.getRace()) : new ArrayList<String>());
		request.setAttribute("White", (race.contains("White") ? "checked" : ""));
		request.setAttribute("Black", (race.contains("Black") ? "checked" : ""));
		request.setAttribute("Native", (race.contains("Native") ? "checked" : ""));
		request.setAttribute("Asian", (race.contains("Asian") ? "checked" : ""));
		request.setAttribute("Chinese", (race.contains("Chinese") ? "checked" : ""));
		request.setAttribute("Filipino", (race.contains("Filipino") ? "checked" : ""));
		request.setAttribute("Japanese", (race.contains("Japanese") ? "checked" : ""));
		request.setAttribute("Korean", (race.contains("Korean") ? "checked" : ""));
		request.setAttribute("Vietnamese", (race.contains("Vietnamese") ? "checked" : ""));
		request.setAttribute("OtherAsian", (race.contains("Other Asian") ? "checked" : ""));
		request.setAttribute("NativeHawaiian", (race.contains("Native Hawaiian") ? "checked" : ""));
		request.setAttribute("Guanamanian", (race.contains("Guanamanian") ? "checked" : ""));
		request.setAttribute("Samoan", (race.contains("Samoan") ? "checked" : ""));
		request.setAttribute("OtherPacific", (race.contains("Other Pacific") ? "checked" : ""));
		request.setAttribute("raceOther", (race.contains("other") ? "checked" : ""));
		
		request.getRequestDispatcher("RaceEthnicity.jsp").forward(request, response);
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
		RaceEthnicity raceEthnicity = (memberInfo.getRaceEthnicity() != null ? memberInfo.getRaceEthnicity() : new RaceEthnicity());
		
		raceEthnicity.setIsHispanicLatino(request.getParameter("isHispanicLatino"));
		raceEthnicity.setHispanicCategory(request.getParameterValues("hispanicCategory"));
		raceEthnicity.setHispanicCategoryOther(request.getParameter("hispanicCategoryOther"));
		raceEthnicity.setRace(request.getParameterValues("race"));
		raceEthnicity.setRaceOther(request.getParameter("raceOther"));
		
		memberInfo.setRaceEthnicity(raceEthnicity);
		memberList.set(index, memberInfo);
		info.setMemberInfo(memberList);
		houseHoldInfoBean.updateHouseholdInfo(info);
		
		if(request.getParameter("customAction").equalsIgnoreCase("update")) {
			response.sendRedirect("RaceEthnicity?memberIndex="+newIndex);
		}  else {
			response.sendRedirect("HealthInsuranceInformation");
		}		
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
