package gov.nv.dwss.medicaid.application.web.servlet;

import gov.nv.dwss.medicaid.application.web.utils.PropertiesFileReader;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.util.Properties;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.rpc.ServiceException;

import org.apache.axis.client.Stub;
import org.apache.axis.configuration.FileProvider;
import org.apache.commons.codec.binary.Base64;
//import org.apache.log4j.Logger;

import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import com.thunderhead.ws.correspondence.CorrespondenceAPIWeb;
import com.thunderhead.ws.correspondence.CorrespondenceAPIWebServiceLocator;
import com.thunderhead.ws.correspondence.ReviewMessageAPI;

/**
 * Servlet implementation class SubmitXMLServlet
 */
public class SubmitXMLServlet extends HttpServlet {
	//static Logger log = Logger.getLogger(PropertiesFileReader.class.getName());
	private static final long serialVersionUID = 1L;
    
	private Properties props = null;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitXMLServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	super.init();
    	
    	// load the properties
    	props = new PropertiesFileReader().getProperties();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String transactXml = request.getParameter("xml");
		//log.info("transactXml = " + transactXml);		
				
		int MedAppTemplateID = Integer.parseInt(props.getProperty("MedAppTemplateID"));
		//log.info("MedAppTemplateID = " + MedAppTemplateID);
		int batchConfigId = Integer.parseInt(props.getProperty("batchConfigId"));
		//log.info("batchConfigId = " + batchConfigId);
		
		String clientWsdd = props.getProperty("clientWsdd");
		String WSLocatorJob = props.getProperty("WSLocatorJob");
		String username = props.getProperty("username");
		String password = props.getProperty("password");
		String tempFolder = props.getProperty("tempFolder");
		String WSLocatorCorrespondence = props.getProperty("WSLocatorCorrespondence");
		
		/*log.info("clientWsdd = " + clientWsdd);
		log.info("WSLocatorJob = " + WSLocatorJob);
		log.info("username = " + username);
		log.info("password = " + password);
		log.info("tempFolder = " + tempFolder);
		log.info("WSLocatorCorrespondence = " + WSLocatorCorrespondence); */
        
		try {		        
			CorrespondenceAPIWebServiceLocator wsLocator = new CorrespondenceAPIWebServiceLocator(new FileProvider(clientWsdd));
			CorrespondenceAPIWeb correspondenceWeb = wsLocator.getCorrespondenceAPIWebWrapped(new URL(WSLocatorCorrespondence));
				
	        Stub stub = (Stub) correspondenceWeb;
	        stub.setUsername(username);
	        stub.setPassword(password);
	        
	        com.thunderhead.ws.correspondence.PackageAPI webPackage = correspondenceWeb.generateReviewCaseWithBatchConfig(batchConfigId,MedAppTemplateID,transactXml.getBytes());
			//get the review case XML   
			ReviewMessageAPI reviewMsg = webPackage.getReviewMessage();
			byte[] reviewCaseXML = reviewMsg.getReviewCase();
			//log.info("reviewCaseXML = " + new String(reviewCaseXML));
			String reviewCaseXMLString = new String(Base64.encodeBase64(reviewCaseXML));
			
			PrintWriter out = response.getWriter();
			out.write(reviewCaseXMLString);
	        
		} catch (ServiceException e) {
			//log.error("An error occurred while calling the web service!", e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}	
	
	@Override
    public void init(ServletConfig config) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
        super.init(config);
    }

}
