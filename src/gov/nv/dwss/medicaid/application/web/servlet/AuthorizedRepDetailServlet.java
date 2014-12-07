package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.NavigationBean;
import gov.nv.dwss.medicaid.application.web.bean.OtherInfoBean;
import gov.nv.dwss.medicaid.application.web.model.Address;
import gov.nv.dwss.medicaid.application.web.model.AuthorizedRep;
import gov.nv.dwss.medicaid.application.web.model.OtherInfo;

import java.io.IOException;
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
 * Servlet implementation class AuthorizedRepDetailServlet
 */
public class AuthorizedRepDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 
	
	@Autowired
	private OtherInfoBean otherInfoBean;
	
	@Autowired
	private NavigationBean navBean;
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OtherInfo otherInfo = otherInfoBean.getOtherInfo();
		List<AuthorizedRep> repList = otherInfo.getAuthorizedRep();
		int index = 
				(!StringUtils.isEmpty(request.getParameter("itemIndex")) ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		
		AuthorizedRep authorizedRep = (index >= 0 ? repList.get(index) : new AuthorizedRep());
		
		request.setAttribute("info", authorizedRep);
		request.setAttribute("itemIndex", index);	

		navBean.setNavItemSelected("AuthRep");		
		request.setAttribute("navBean", navBean);

		request.getRequestDispatcher("AuthorizedRepDetail.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OtherInfo otherInfo = otherInfoBean.getOtherInfo();List<AuthorizedRep> repList = otherInfo.getAuthorizedRep();
		int index = 
				(!StringUtils.isEmpty(request.getParameter("itemIndex")) ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		
		AuthorizedRep authorizedRep = (index >= 0 ? repList.get(index) : new AuthorizedRep());
		authorizedRep.setDoYouAgree(request.getParameter("doYouAgree"));
		authorizedRep.setRepName(request.getParameter("repName"));
		authorizedRep.setRepPhone(request.getParameter("repPhone"));
		
		Address repAddress = 
				(authorizedRep.getRepAddress() != null ? authorizedRep.getRepAddress() : new Address());
		repAddress.setCity(request.getParameter("city"));
		repAddress.setApartment(request.getParameter("apartment"));
		repAddress.setState(request.getParameter("state"));
		repAddress.setStreet(request.getParameter("street"));
		repAddress.setZip(request.getParameter("zip"));
		
		authorizedRep.setRepAddress(repAddress);
		
		if(index >= 0) {
			repList.set(index, authorizedRep);
		} else {
			repList.add(authorizedRep);
		}
		
		otherInfo.setAuthorizedRep(repList);
		otherInfoBean.updateOtherInfo(otherInfo);
		
		response.sendRedirect("AuthorizedRep");		
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
