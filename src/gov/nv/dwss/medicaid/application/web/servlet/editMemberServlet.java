package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HouseHoldInformationBean;
import gov.nv.dwss.medicaid.application.web.model.GeneralInfo;
import gov.nv.dwss.medicaid.application.web.model.HouseHoldInfo;
import gov.nv.dwss.medicaid.application.web.model.MemberInfo;
import gov.nv.dwss.medicaid.application.web.model.MemberInfoJSON;
import gov.nv.dwss.medicaid.application.web.utils.FormatHelpers;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.joda.time.DateTime;
import org.joda.time.Years;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * Servlet implementation class addUpdateMemberServlet
 */
public class editMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private HouseHoldInformationBean houseHoldInfoBean;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HouseHoldInfo info = houseHoldInfoBean.getHouseholdInfo();
		List<MemberInfo> memberInfo = info.getMemberInfo();
		
		if(memberInfo == null) {
			memberInfo = new ArrayList<MemberInfo>();
		}
		
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
		String json = null;
		
		if(br != null) {
			json = br.readLine();
		}
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			MemberInfoJSON formValue = mapper.readValue(json, MemberInfoJSON.class);
			Date birthDate = FormatHelpers.formatDate(formValue.getBirthDate());
			int age = 0;
			if(birthDate != null) {
				DateTime dob = new DateTime(birthDate);
				DateTime now = new DateTime();
				age = Years.yearsBetween(dob, now).getYears();
			}
			
			if(request.getParameter("memberIndex") != null && request.getParameter("cmd") == "update") {
				int memberIndex = Integer.parseInt(request.getParameter("memberIndex"));
				GeneralInfo original = memberInfo.get(memberIndex).getGeneralInfo();
				original.setBirthDate(birthDate);
				original.setFirstName(formValue.getFirstName());
				original.setMiddleName(formValue.getMiddleName());
				original.setLastName(formValue.getLastName());
				original.setGender(formValue.getGender());
				original.setRelationship(formValue.getRelationship());
				original.setAge(age);
				
				memberInfo.get(memberIndex).setGeneralInfo(original);
			} else {
				GeneralInfo newGeneralInfo = new GeneralInfo();
				newGeneralInfo.setBirthDate(birthDate);
				newGeneralInfo.setFirstName(formValue.getFirstName());
				newGeneralInfo.setMiddleName(formValue.getMiddleName());
				newGeneralInfo.setLastName(formValue.getLastName());
				newGeneralInfo.setGender(formValue.getGender());
				newGeneralInfo.setRelationship(formValue.getRelationship());
				newGeneralInfo.setAge(age);
				MemberInfo newMemberInfo = new MemberInfo();
				
				newMemberInfo.setGeneralInfo(newGeneralInfo);
				memberInfo.add(newMemberInfo);
			}
			
			info.setMemberInfo(memberInfo);
			houseHoldInfoBean.updateHouseholdInfo(info);
			
			mapper.writeValue(response.getOutputStream(), memberInfo);
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
