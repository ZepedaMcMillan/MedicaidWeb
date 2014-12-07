package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HouseHoldInformationBean;
import gov.nv.dwss.medicaid.application.web.model.HouseHoldInfo;
import gov.nv.dwss.medicaid.application.web.model.IncomeInfo;
import gov.nv.dwss.medicaid.application.web.model.IncomeInfoItem;
import gov.nv.dwss.medicaid.application.web.model.MemberInfo;

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
 * Servlet implementation class MemberIncomeServlet
 */
public class MemberIncomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private HouseHoldInformationBean houseHoldInfoBean;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HouseHoldInfo info = houseHoldInfoBean.getHouseholdInfo();	
		List<MemberInfo> memberList = info.getMemberInfo();		
		int index = (request.getParameter("memberIndex") != null ? Integer.parseInt(request.getParameter("memberIndex")) : 0);
		
		request.setAttribute("memberIndex", index);

		MemberInfo memberInfo = memberList.get(index);	
		IncomeInfo incomeInfo = (memberInfo.getIncomeInfo() != null ? memberInfo.getIncomeInfo() : new IncomeInfo());
		List<IncomeInfoItem> incomeInfoList = 
				(incomeInfo.getIncomeInfoList() != null ? incomeInfo.getIncomeInfoList() : new ArrayList<IncomeInfoItem>());
		
		memberInfo.setIncomeInfo(incomeInfo);
		memberList.set(index, memberInfo);
		info.setMemberInfo(memberList);
		houseHoldInfoBean.updateHouseholdInfo(info);
		
		List<String> pastThreeMonths = 
				(incomeInfo.getPastThreeMonths() != null ? Arrays.asList(incomeInfo.getPastThreeMonths()) : new ArrayList<String>());
		
		request.setAttribute("changeJobs", (pastThreeMonths.contains("changeJobs") ? "checked" : ""));
		request.setAttribute("stopWorking", (pastThreeMonths.contains("stopWorking") ? "checked" : ""));
		request.setAttribute("workFewerHours", (pastThreeMonths.contains("workFewerHours") ? "checked" : ""));
		request.setAttribute("noneOfThese", (pastThreeMonths.contains("noneOfThese") ? "checked" : ""));		
		
		request.setAttribute("incomeInfo", incomeInfo);
		request.setAttribute("incomeInfoList", incomeInfoList);
		request.setAttribute("memberList", memberList);		
		request.getRequestDispatcher("MemberIncome.jsp").forward(request, response);
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
		IncomeInfo incomeInfo = (memberInfo.getIncomeInfo() != null ? memberInfo.getIncomeInfo() : new IncomeInfo());
		incomeInfo.setIsEmployed(request.getParameter("isEmployed"));
		incomeInfo.setPastThreeMonths(request.getParameterValues("pastThreeMonths"));
		
		if(request.getParameter("customAction").equalsIgnoreCase("update")) {
			response.sendRedirect("MemberIncome?memberIndex=" + newIndex);
		} else if (request.getParameter("customAction").equalsIgnoreCase("editIncome")) { 
			response.sendRedirect("MemberIncomeDetail?memberIndex="+newIndex+"&itemIndex="+request.getParameter("itemIndex"));
		} else if(request.getParameter("customAction").equalsIgnoreCase("deleteIncome")) { 
			response.sendRedirect("DeleteMemberIncome?memberIndex="+newIndex+"&itemIndex="+request.getParameter("itemIndex"));
		} else {
			response.sendRedirect("OtherIncome?memberIndex=" + newIndex);
		}
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
