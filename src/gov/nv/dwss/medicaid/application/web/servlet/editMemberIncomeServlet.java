package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HouseHoldInformationBean;
import gov.nv.dwss.medicaid.application.web.model.HouseHoldInfo;
import gov.nv.dwss.medicaid.application.web.model.IncomeInfo;
import gov.nv.dwss.medicaid.application.web.model.IncomeInfoItem;
import gov.nv.dwss.medicaid.application.web.model.MemberInfo;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
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
 * Servlet implementation class editMemberServlet
 */
public class editMemberIncomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;	

	@Autowired
	private HouseHoldInformationBean houseHoldInfoBean;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		HouseHoldInfo info = houseHoldInfoBean.getHouseholdInfo();
		List<MemberInfo> members = info.getMemberInfo();
		
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
		String json = null;
		
		if(br != null) {
			json = br.readLine();
		}
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			IncomeInfoItem incomeItem = mapper.readValue(json, IncomeInfoItem.class);
			String memberIndex = (request.getParameter("memberIndex") != null ? request.getParameter("memberIndex") : "0");
			int index = Integer.parseInt(memberIndex);			
			MemberInfo memberInfo = members.get(index);
			IncomeInfo incomeInfo = memberInfo.getIncomeInfo();			
			
			List<IncomeInfoItem> incomeInfoList = 
					(incomeInfo.getIncomeInfoList() != null ? incomeInfo.getIncomeInfoList() : new ArrayList<IncomeInfoItem>());
			
			incomeInfoList.add(incomeItem);
			incomeInfo.setIncomeInfoList(incomeInfoList);
			memberInfo.setIncomeInfo(incomeInfo);
			members.set(index, memberInfo);
			info.setMemberInfo(members);
			houseHoldInfoBean.updateHouseholdInfo(info);

			mapper.writeValue(response.getOutputStream(), incomeInfoList);
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
