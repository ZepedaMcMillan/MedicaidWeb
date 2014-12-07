package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.bean.OtherInfoBean;
import gov.nv.dwss.medicaid.application.web.model.AuthorizedRep;
import gov.nv.dwss.medicaid.application.web.model.OtherInfo;

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
 * Servlet implementation class editAuthorizedRepServlet
 */
public class editAuthorizedRepServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private OtherInfoBean otherInfoBean;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OtherInfo otherInfo = otherInfoBean.getOtherInfo();
		List<AuthorizedRep> reps = (otherInfo.getAuthorizedRep() != null ? otherInfo.getAuthorizedRep() : new ArrayList<AuthorizedRep>());
		
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
		String json = null;
		
		if(br != null) {
			json = br.readLine();
		}
		
		ObjectMapper mapper = new ObjectMapper();
		//try {
			AuthorizedRep authorizedRep = mapper.readValue(json, AuthorizedRep.class);
			reps.add(authorizedRep);
			otherInfo.setAuthorizedRep(reps);
			otherInfoBean.updateOtherInfo(otherInfo);
			
			mapper.writeValue(response.getOutputStream(), reps);
			
		/*} catch (Exception ex) {
			response.setStatus(500);
		}	*/	
	}
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }

}
