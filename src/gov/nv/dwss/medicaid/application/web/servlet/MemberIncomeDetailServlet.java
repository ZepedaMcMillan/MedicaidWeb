package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HouseHoldInformationBean;
import gov.nv.dwss.medicaid.application.web.model.Address;
import gov.nv.dwss.medicaid.application.web.model.HouseHoldInfo;
import gov.nv.dwss.medicaid.application.web.model.IncomeInfo;
import gov.nv.dwss.medicaid.application.web.model.IncomeInfoItem;
import gov.nv.dwss.medicaid.application.web.model.MemberInfo;

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
 * Servlet implementation class MemberIncomeDetail
 */
public class MemberIncomeDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Autowired
	private HouseHoldInformationBean houseHoldInfoBean;
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HouseHoldInfo houseHoldInfo = houseHoldInfoBean.getHouseholdInfo();
		List<MemberInfo> memberList = houseHoldInfo.getMemberInfo();		
		
		int memberIndex = (Integer.parseInt(request.getParameter("memberIndex")));
		int index = (!StringUtils.isEmpty(request.getParameter("itemIndex")) ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		
		MemberInfo memberInfo = (memberList.get(memberIndex));
		IncomeInfo incomeInfo = memberInfo.getIncomeInfo();
		List<IncomeInfoItem> incomeList = 
				(incomeInfo.getIncomeInfoList() != null ? incomeInfo.getIncomeInfoList() : new ArrayList<IncomeInfoItem>());
		
		IncomeInfoItem incomeInfoItem = (index >= 0 ? incomeList.get(0) : new IncomeInfoItem());
		
		request.setAttribute("info", incomeInfoItem);
		request.setAttribute("itemIndex", index);
		request.setAttribute("memberIndex", memberIndex);

		request.getRequestDispatcher("MemberIncomeDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HouseHoldInfo houseHoldInfo = houseHoldInfoBean.getHouseholdInfo();
		List<MemberInfo> memberList = houseHoldInfo.getMemberInfo();		
		
		int memberIndex = (Integer.parseInt(request.getParameter("memberIndex")));
		int index = (!StringUtils.isEmpty(request.getParameter("itemIndex")) ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		
		MemberInfo memberInfo = (memberList.get(memberIndex));
		IncomeInfo incomeInfo = memberInfo.getIncomeInfo();
		List<IncomeInfoItem> incomeList = 
				(incomeInfo.getIncomeInfoList() != null ? incomeInfo.getIncomeInfoList() : new ArrayList<IncomeInfoItem>());
		
		IncomeInfoItem incomeInfoItem = (index >= 0 ? incomeList.get(0) : new IncomeInfoItem());
 		incomeInfoItem.setEmployerName(request.getParameter("employerName"));
 		incomeInfoItem.setEmployerPhone(request.getParameter("employerPhone"));
 		incomeInfoItem.setIsSelfEmployed(request.getParameter("isSelfEmployed"));
 		incomeInfoItem.setMonthlyNetIncome(request.getParameter("monthlyNetIncome"));
 		incomeInfoItem.setPayFrequency(request.getParameter("payFrequency"));
 		incomeInfoItem.setTypeOfWork(request.getParameter("typeOfWork"));
 		incomeInfoItem.setWeekHoursWorked(request.getParameter("weekHoursWorked"));
 		incomeInfoItem.setWagesPerPayPeriod(request.getParameter("wagesPerPayPeriod"));
 		
 		Address employerAddress = 
 				(incomeInfoItem.getEmployerAddress() != null ?  incomeInfoItem.getEmployerAddress() : new Address());
 		employerAddress.setApartment(request.getParameter("apartment"));
 		employerAddress.setCity(request.getParameter("city"));
 		employerAddress.setState(request.getParameter("state"));
 		employerAddress.setStreet(request.getParameter("street"));
 		employerAddress.setZip(request.getParameter("zip"));
 		
 		incomeInfoItem.setEmployerAddress(employerAddress);
 		
 		if(index >=0) {
 			incomeList.set(index, incomeInfoItem);
 		} else {
 			incomeList.add(incomeInfoItem);
 		}
 		
 		incomeInfo.setIncomeInfoList(incomeList);
 		memberInfo.setIncomeInfo(incomeInfo);
 		memberList.set(memberIndex, memberInfo);
 		houseHoldInfo.setMemberInfo(memberList);
 		houseHoldInfoBean.updateHouseholdInfo(houseHoldInfo);
 		
 		response.sendRedirect("MemberIncome?memberIndex="+memberIndex);
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
