package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.HouseHoldInformationBean;
import gov.nv.dwss.medicaid.application.web.bean.NavigationBean;
import gov.nv.dwss.medicaid.application.web.model.ClaimedOnOther;
import gov.nv.dwss.medicaid.application.web.model.HouseHoldInfo;
import gov.nv.dwss.medicaid.application.web.model.MemberInfo;
import gov.nv.dwss.medicaid.application.web.model.TaxInfo;

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
 * Servlet implementation class TaxInformationServlet
 */
public class TaxInformationServlet extends HttpServlet {
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
		TaxInfo taxInfo = memberInfo.getTaxInfo();
		
		if(taxInfo == null) {
			taxInfo = new TaxInfo();
		}

		request.setAttribute("memberList", memberList);
		request.setAttribute("taxInfo", taxInfo);
		
		navBean.setNavItemSelected("Tax");
		request.setAttribute("navBean", navBean);
		
		request.getRequestDispatcher("TaxInformation.jsp").forward(request, response);	
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
		TaxInfo taxInfo = memberInfo.getTaxInfo();
		
		if(taxInfo == null) {
			taxInfo = new TaxInfo();
		}
		
		taxInfo.setFilingFederalTax(request.getParameter("filingFederalTax"));
		taxInfo.setFilingJoint(request.getParameter("filingJoint"));
		taxInfo.setSpouseName(request.getParameter("spouseName"));
		taxInfo.setIsClaimingDependents(request.getParameter("isClaimingDependents"));
		taxInfo.setDependents(request.getParameter("dependents"));
		taxInfo.setIsClaimedOnOther(request.getParameter("isClaimedOnOther"));
		
		ClaimedOnOther claimed = taxInfo.getClaimedOnOther();
		if(claimed == null) {
			claimed = new ClaimedOnOther();
		}
		
		claimed.setOtherFilerName(request.getParameter("otherFilerName"));
		claimed.setRelationToFiler(request.getParameter("relationToFiler"));
		
		taxInfo.setClaimedOnOther(claimed);
		memberInfo.setTaxInfo(taxInfo);
		memberList.set(index, memberInfo);
		info.setMemberInfo(memberList);
		
		houseHoldInfoBean.updateHouseholdInfo(info);
		
		if(request.getParameter("customAction").equalsIgnoreCase("update")) {
			response.sendRedirect("TaxInformation?memberIndex=" + newIndex);
		}  else {
			response.sendRedirect("OtherAssistance?memberIndex=" + newIndex);
		}	
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
