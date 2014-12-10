package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HouseHoldInformationBean;
import gov.nv.dwss.medicaid.application.web.bean.NavigationBean;
import gov.nv.dwss.medicaid.application.web.model.HouseHoldInfo;
import gov.nv.dwss.medicaid.application.web.model.MemberInfo;
import gov.nv.dwss.medicaid.application.web.model.OtherIncome;
import gov.nv.dwss.medicaid.application.web.model.OtherIncomeItem;
import gov.nv.dwss.medicaid.application.web.utils.FormatHelpers;

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
 * Servlet implementation class OtherIncomeServlet
 */
public class OtherIncomeServlet extends HttpServlet {
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
		
		request.setAttribute("memberList", memberList);
		
		MemberInfo memberInfo = memberList.get(index);
		OtherIncome otherIncome = (memberInfo.getOtherIncome() != null ? memberInfo.getOtherIncome() : new OtherIncome());
		
		List<OtherIncomeItem> otherIncomeList = 
				(otherIncome.getOtherIncomeList() != null ? otherIncome.getOtherIncomeList() : new ArrayList<OtherIncomeItem>());
		if(otherIncomeList.size() <= 0) {
			for(int i=0; i < 14; i++) {
				otherIncomeList.add(new OtherIncomeItem());
			}	
			
			otherIncome.setOtherIncomeList(otherIncomeList);
			memberInfo.setOtherIncome(otherIncome);
			memberList.set(index, memberInfo);
			info.setMemberInfo(memberList);
			houseHoldInfoBean.updateHouseholdInfo(info);
		}
		
		request.setAttribute("memberInfo", memberInfo);
		navBean.setNavItemSelected("OtherIncome");
		request.setAttribute("navBean", navBean);
		
		request.getRequestDispatcher("OtherIncome.jsp").forward(request, response);
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
		OtherIncome otherIncome = memberInfo.getOtherIncome();
		List<OtherIncomeItem> otherIncomeList = otherIncome.getOtherIncomeList();
		
		otherIncome.setOtherIncomeReceived(FormatHelpers.formatBool(request.getParameter("otherIncomeReceived")));
		otherIncome.setIsIncomeSteady(FormatHelpers.formatBool(request.getParameter("isIncomeSteady")));
		otherIncome.setExpectedIncomeThisYear(FormatHelpers.formatMoney(request.getParameter("expectedIncomeThisYear")));
		otherIncome.setExpectedIncomeNextYear(FormatHelpers.formatMoney(request.getParameter("expectedIncomeNextYear")));
		
		OtherIncomeItem unemployment = otherIncomeList.get(0);
		unemployment.setOtherIncomeType("Unemployment");
		unemployment.setAmount(FormatHelpers.formatMoney(request.getParameter("unemploymentAmt")));
		unemployment.setFrequency(request.getParameter("unemploymentHowOften"));
		otherIncomeList.set(0, unemployment);
		
		OtherIncomeItem retirement = otherIncomeList.get(1);
		retirement.setOtherIncomeType("Retirement");
		retirement.setAmount(FormatHelpers.formatMoney(request.getParameter("retirementAmt")));
		retirement.setFrequency(request.getParameter("retirementHowOften"));
		otherIncomeList.set(1, retirement);
		
		OtherIncomeItem pensions = otherIncomeList.get(2);
		pensions.setOtherIncomeType("Pensions");
		pensions.setAmount(FormatHelpers.formatMoney(request.getParameter("pensionsAmt")));
		pensions.setFrequency(request.getParameter("pensionsHowOften"));
		otherIncomeList.set(2, pensions);
		
		OtherIncomeItem socialSecurity = otherIncomeList.get(3);
		socialSecurity.setOtherIncomeType("Social Security (RSDI) Benefits");
		socialSecurity.setAmount(FormatHelpers.formatMoney(request.getParameter("ssBenefitsAmt")));
		socialSecurity.setFrequency(request.getParameter("ssBenefitsHowOften"));
		otherIncomeList.set(3, socialSecurity);
		
		OtherIncomeItem interestDividends = otherIncomeList.get(4);
		interestDividends.setOtherIncomeType("Interest/Dividends");
		interestDividends.setAmount(FormatHelpers.formatMoney(request.getParameter("intDividentsAmt")));
		interestDividends.setFrequency(request.getParameter("intDividentsHowOften"));
		interestDividends.setIsTribal(FormatHelpers.formatBool(request.getParameter("interestDividendsTribal")));
		otherIncomeList.set(4, interestDividends);
		
		OtherIncomeItem annuities = otherIncomeList.get(5);
		annuities.setOtherIncomeType("Annuities");
		annuities.setAmount(FormatHelpers.formatMoney(request.getParameter("annuitiesAmt")));
		annuities.setFrequency(request.getParameter("annuitiesHowOften"));
		annuities.setIsTribal(FormatHelpers.formatBool(request.getParameter("annuitiesTribal")));
		otherIncomeList.set(5, annuities);
		
		OtherIncomeItem rentalRoyalty = otherIncomeList.get(6);
		rentalRoyalty.setOtherIncomeType("Rental or Royalty Income");
		rentalRoyalty.setAmount(FormatHelpers.formatMoney(request.getParameter("rentalRoyaltyAmt")));
		rentalRoyalty.setFrequency(request.getParameter("rentalRoyaltyHowOften"));
		rentalRoyalty.setIsTribal(FormatHelpers.formatBool(request.getParameter("rentalRoyaltyTribal")));
		otherIncomeList.set(6, rentalRoyalty);
		
		OtherIncomeItem capitalGains = otherIncomeList.get(7);
		capitalGains.setOtherIncomeType("Capital Gains");
		capitalGains.setAmount(FormatHelpers.formatMoney(request.getParameter("capitalGainsAmt")));
		capitalGains.setFrequency(request.getParameter("capitalGainsHowOften"));
		capitalGains.setIsTribal(FormatHelpers.formatBool(request.getParameter("capitalGainsTribal")));
		otherIncomeList.set(7, capitalGains);
		
		OtherIncomeItem farmingFishing = otherIncomeList.get(8);
		farmingFishing.setOtherIncomeType("Farming or Fishing Income");
		farmingFishing.setAmount(FormatHelpers.formatMoney(request.getParameter("farmFishAmt")));
		farmingFishing.setFrequency(request.getParameter("farmFishHowOften"));	
		farmingFishing.setIsTribal(FormatHelpers.formatBool(request.getParameter("farmFishTribal")));
		otherIncomeList.set(8, farmingFishing);
		
		OtherIncomeItem alimony = otherIncomeList.get(9);
		alimony.setOtherIncomeType("Alimony");
		alimony.setAmount(FormatHelpers.formatMoney(request.getParameter("alimonyAmt")));
		alimony.setFrequency(request.getParameter("alimonyHowOften"));
		otherIncomeList.set(9, alimony);
		
		OtherIncomeItem scholarship = otherIncomeList.get(10);
		scholarship.setOtherIncomeType("Scholarship Grants");
		scholarship.setAmount(FormatHelpers.formatMoney(request.getParameter("scholarshipAmt")));
		scholarship.setFrequency(request.getParameter("scholarshipHowOften"));	
		scholarship.setIsTribal(FormatHelpers.formatBool(request.getParameter("scholarshipTribal")));
		otherIncomeList.set(10, scholarship);
		
		OtherIncomeItem cashAdvance = otherIncomeList.get(11);
		cashAdvance.setOtherIncomeType("Cash Advances");
		cashAdvance.setAmount(FormatHelpers.formatMoney(request.getParameter("cashAdvAmt")));
		cashAdvance.setFrequency(request.getParameter("cashAdvHowOften"));	
		otherIncomeList.set(11, cashAdvance);
		
		OtherIncomeItem gambling = otherIncomeList.get(12);
		gambling.setOtherIncomeType("Gambling Winnings");
		gambling.setAmount(FormatHelpers.formatMoney(request.getParameter("gamblingWinAmt")));
		gambling.setFrequency(request.getParameter("gamblingWinHowOften"));	
		otherIncomeList.set(12, gambling);
		
		OtherIncomeItem other = otherIncomeList.get(13);
		other.setOtherIncomeType(request.getParameter("otherIncomeOther"));
		other.setAmount(FormatHelpers.formatMoney(request.getParameter("otherAmt")));
		other.setFrequency(request.getParameter("otherHowOften"));	
		other.setIsTribal(FormatHelpers.formatBool(request.getParameter("otherTribal")));
		otherIncomeList.set(13, other);		
		
		otherIncome.setOtherIncomeList(otherIncomeList);
		memberInfo.setOtherIncome(otherIncome);
		memberList.set(index, memberInfo);
		info.setMemberInfo(memberList);
		houseHoldInfoBean.updateHouseholdInfo(info);
		
		if(request.getParameter("customAction").equalsIgnoreCase("update")) {
			response.sendRedirect("OtherIncome?memberIndex=" + newIndex);
		}  else {
			response.sendRedirect("Deductions?memberIndex=" + newIndex);
		}
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
