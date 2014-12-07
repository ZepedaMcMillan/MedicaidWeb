package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HouseHoldInformationBean;
import gov.nv.dwss.medicaid.application.web.bean.NavigationBean;
import gov.nv.dwss.medicaid.application.web.model.DeductionItem;
import gov.nv.dwss.medicaid.application.web.model.Deductions;
import gov.nv.dwss.medicaid.application.web.model.HouseHoldInfo;
import gov.nv.dwss.medicaid.application.web.model.MemberInfo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * Servlet implementation class DeductionsServlet
 */
public class DeductionsServlet extends HttpServlet {
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
		String memberIndex = (request.getParameter("memberIndex") != null ? request.getParameter("memberIndex") : "0");
		
		int index = Integer.parseInt(memberIndex);
		MemberInfo member = memberList.get(index);
		Deductions deductions = (member.getDeductions() != null ? member.getDeductions() : new Deductions());
		List<DeductionItem> deductionsList = 
				(deductions.getDeductionsList() != null ? deductions.getDeductionsList() : new ArrayList<DeductionItem>());
		
		if(deductionsList.size() <= 0) {
			for (int i = 0; i < 10; i++) {
				deductionsList.add(new DeductionItem());
			}
		}
		
		deductions.setDeductionsList(deductionsList);
		member.setDeductions(deductions);
		memberList.set(index, member);
		houseHoldInfo.setMemberInfo(memberList);
		houseHoldInfoBean.updateHouseholdInfo(houseHoldInfo);		
		
		request.setAttribute("memberInfo", member);
		request.setAttribute("memberIndex", memberIndex);
		request.setAttribute("memberList", memberList);	

		navBean.setNavItemSelected("Deductions");		
		request.setAttribute("navBean", navBean);
		
		request.getRequestDispatcher("Deductions.jsp").forward(request, response);
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
		Deductions deductions = memberInfo.getDeductions();
		
		deductions.setHaveDeductions(request.getParameter("haveDeductions"));
		List<DeductionItem> deductionsList = deductions.getDeductionsList();
				
		// Educator Expenses
		DeductionItem educatorExp = deductionsList.get(0);
		educatorExp.setType("Educator Expenses");
		educatorExp.setAmount(request.getParameter("educatorExpensesAmt"));
		educatorExp.setFrequency(request.getParameter("educatorExpensesHowOften"));			
		deductionsList.set(0, educatorExp);
		
		// Health Savings
		DeductionItem healthSavings = deductionsList.get(1);
		healthSavings.setType("Health Savings Account");
		healthSavings.setAmount(request.getParameter("healthSavingsAmt"));
		healthSavings.setFrequency(request.getParameter("healthSavingsHowOften"));
		deductionsList.set(1, healthSavings);
		
		// Moving Expenses
		DeductionItem movingExp = deductionsList.get(2);
		movingExp.setType("Moving Expenses");
		movingExp.setAmount(request.getParameter("movingExpAmt"));
		movingExp.setFrequency(request.getParameter("movingExpHowOften"));
		deductionsList.set(2, movingExp);
		
		// Alimony
		DeductionItem alimony = deductionsList.get(3);
		alimony.setType("Alimony");
		alimony.setAmount(request.getParameter("alimonyAmt"));
		alimony.setFrequency(request.getParameter("alimonyHowOften"));
		deductionsList.set(3, alimony);
		
		// IRA
		DeductionItem ira = deductionsList.get(4);
		ira.setType("IRA Deductions");
		ira.setAmount(request.getParameter("IRAAmt"));
		ira.setFrequency(request.getParameter("IRAHowOften"));
		deductionsList.set(4, ira);
		
		// Business Expenses
		DeductionItem businessExp = deductionsList.get(5);
		businessExp.setType("Business expenses of reservists, performing artists, and fee-basis government officials");
		businessExp.setAmount(request.getParameter("businessExpAmt"));
		businessExp.setFrequency(request.getParameter("businessExpHowOften"));
		deductionsList.set(5, businessExp);
		
		// Penalty Paid
		DeductionItem penaltyPaid = deductionsList.get(6);
		penaltyPaid.setType("Penalty paid on early withdrawal of savings");
		penaltyPaid.setAmount(request.getParameter("penaltyPaidAmt"));
		penaltyPaid.setFrequency(request.getParameter("penaltyPaidHowOften"));
		deductionsList.set(6, penaltyPaid);
		
		// Student Loan Interest
		DeductionItem studentLoanInt = deductionsList.get(7);
		studentLoanInt.setType("Student loan interest");
		studentLoanInt.setAmount(request.getParameter("studentLoanIntAmt"));
		studentLoanInt.setFrequency(request.getParameter("studentLoanIntHowOften"));
		deductionsList.set(7, studentLoanInt);
		
		// Tuition and Fees
		DeductionItem tuition = deductionsList.get(8);
		tuition.setType("Tuition and fees");
		tuition.setAmount(request.getParameter("tuitionAmt"));
		tuition.setFrequency(request.getParameter("tuitionHowOften"));
		deductionsList.set(8, tuition);
		
		// Domestic production activities
		DeductionItem domesticProdAct = deductionsList.get(9);
		domesticProdAct.setType("Domestic production activities");
		domesticProdAct.setAmount(request.getParameter("domesticProdActAmt"));
		domesticProdAct.setFrequency(request.getParameter("domesticProdActHowOften"));
		deductionsList.set(9, domesticProdAct);			
		
		deductions.setDeductionsList(deductionsList);
		memberInfo.setDeductions(deductions);
		memberList.set(index, memberInfo);
		info.setMemberInfo(memberList);
		
		houseHoldInfoBean.updateHouseholdInfo(info);
		
		if(request.getParameter("customAction").equalsIgnoreCase("update")) {
			response.sendRedirect("Deductions?memberIndex=" + newIndex);
		}  else {
			response.sendRedirect("RaceEthnicity?memberIndex=" + newIndex);
		}
		
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }

}
