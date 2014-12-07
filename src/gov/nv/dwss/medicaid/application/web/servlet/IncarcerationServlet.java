package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.NavigationBean;
import gov.nv.dwss.medicaid.application.web.bean.OtherInfoBean;
import gov.nv.dwss.medicaid.application.web.model.Incarceration;
import gov.nv.dwss.medicaid.application.web.model.OtherInfo;

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
 * Servlet implementation class IncarcerationServlet
 */
public class IncarcerationServlet extends HttpServlet {
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
		List<Incarceration> incarcerationList = 
				(otherInfo.getIncarcerationList() != null ? otherInfo.getIncarcerationList() : new ArrayList<Incarceration>());
		
		request.setAttribute("otherInfo", otherInfo);
		request.setAttribute("incarceration", incarcerationList);
		navBean.setNavItemSelected("Incarceration");
		request.setAttribute("navBean", navBean);
		request.getRequestDispatcher("Incarceration.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OtherInfo otherInfo = otherInfoBean.getOtherInfo();					
		otherInfo.setApplicantIncarcerated(request.getParameter("applicantIncarcerated"));	
		
		List<Incarceration> incarcerationList = 
				(otherInfo.getIncarcerationList() != null ? otherInfo.getIncarcerationList() : new ArrayList<Incarceration>());
		otherInfo.setIncarcerationList(incarcerationList);
		otherInfoBean.updateOtherInfo(otherInfo);
		
		if(request.getParameter("customAction").equalsIgnoreCase("edit")) {
			response.sendRedirect("IncarcerationDetail?itemIndex="+request.getParameter("itemIndex"));
		} else if(request.getParameter("customAction").equalsIgnoreCase("delete")) {
			response.sendRedirect("DeleteIncarceration?itemIndex="+request.getParameter("itemIndex"));
		} else {	
			response.sendRedirect("PrivacyPolicy");	
		}				
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }

}
