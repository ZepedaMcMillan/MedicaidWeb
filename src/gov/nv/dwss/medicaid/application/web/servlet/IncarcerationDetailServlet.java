package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.OtherInfoBean;
import gov.nv.dwss.medicaid.application.web.model.Incarceration;
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
 * Servlet implementation class IncarcerationDetailServlet
 */
public class IncarcerationDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private OtherInfoBean otherInfoBean;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OtherInfo otherInfo = otherInfoBean.getOtherInfo();	
		List<Incarceration> incarcerationList = otherInfo.getIncarcerationList();
		int index = 
				(!StringUtils.isEmpty(request.getParameter("itemIndex")) ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		
		Incarceration incarceration = (index >= 0 ? incarcerationList.get(index) : new Incarceration());
		
		request.setAttribute("info", incarceration);
		request.setAttribute("itemIndex", index);
		request.getRequestDispatcher("IncarcerationDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OtherInfo otherInfo = otherInfoBean.getOtherInfo();	
		List<Incarceration> incarcerationList = otherInfo.getIncarcerationList();
		int index = 
				(!StringUtils.isEmpty(request.getParameter("itemIndex")) ? Integer.parseInt(request.getParameter("itemIndex")) : -1);
		
		Incarceration incarceration = (index >= 0 ? incarcerationList.get(index) : new Incarceration());
		incarceration.setDispositionPending(request.getParameter("dispositionPending"));
		incarceration.setPersonName(request.getParameter("personName"));
		
		if(index >= 0) {
			incarcerationList.set(index, incarceration);
		} else {
			incarcerationList.add(incarceration);
		}
		
		otherInfo.setIncarcerationList(incarcerationList);
		otherInfoBean.updateOtherInfo(otherInfo);
		
		response.sendRedirect("Incarceration");
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }
}
