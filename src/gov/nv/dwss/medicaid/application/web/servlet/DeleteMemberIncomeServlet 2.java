package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HouseHoldInformationBean;
import gov.nv.dwss.medicaid.application.web.model.HouseHoldInfo;
import gov.nv.dwss.medicaid.application.web.model.IncomeInfo;
import gov.nv.dwss.medicaid.application.web.model.IncomeInfoItem;
import gov.nv.dwss.medicaid.application.web.model.MemberInfo;

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
 * Servlet implementation class DeleteMemberIncomeServlet
 */
public class DeleteMemberIncomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Autowired
	private HouseHoldInformationBean houseHoldInfoBean;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HouseHoldInfo houseHoldInfo = houseHoldInfoBean.getHouseholdInfo();	
		List<MemberInfo> memberList = houseHoldInfo.getMemberInfo();
		int index = (request.getParameter("itemIndex") != null ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		int memberIndex = (request.getParameter("memberIndex") != null ? Integer.parseInt(request.getParameter("memberIndex")) : -1);
		
		if(index >= 0 && memberIndex >= 0) {
			MemberInfo memberInfo = memberList.get(memberIndex);
			IncomeInfo incomeInfo = memberInfo.getIncomeInfo();
			List<IncomeInfoItem> incomeList = incomeInfo.getIncomeInfoList();
			incomeList.remove(index);
			incomeInfo.setIncomeInfoList(incomeList);
			memberInfo.setIncomeInfo(incomeInfo);
			memberList.set(memberIndex, memberInfo);
			houseHoldInfo.setMemberInfo(memberList);
			response.sendRedirect("MemberIncome?memberIndex="+memberIndex);
		} else {
			response.sendRedirect("MemberIncome?memberIndex="+memberIndex);
		}
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
