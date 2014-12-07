package gov.nv.dwss.medicaid.application.web;

import gov.nv.dwss.medicaid.application.web.utils.PropertiesFileReader;

import java.io.IOException;
import java.io.OutputStream;
import java.net.FileNameMap;
import java.net.URL;
import java.net.URLConnection;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.axis.client.Stub;
import org.apache.axis.configuration.FileProvider;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.thunderhead.ws.job.ChannelDocumentAPI;
import com.thunderhead.ws.job.ExternalJobRequestAPI;
import com.thunderhead.ws.job.JobAPIWeb;
import com.thunderhead.ws.job.JobAPIWebServiceLocator;
import com.thunderhead.ws.job.PackageAPI;

public class ExecutePreview extends HttpServlet {

	private static final Log logger = LogFactory.getLog(ExecutePreview.class);
    private static final long serialVersionUID = 1L;

    private Properties props = null;
    
    @Override
    public void init() throws ServletException {
    	super.init();
    	props = new PropertiesFileReader().getProperties();
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        executePreview(req, res);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        executePreview(req, res);
    }

    /**
     * @param request 
     * @param response
     * @throws ServletException
     * @throws java.io.IOException
     */
    private void executePreview(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    	logger.info("executePreview - enter");
    	
        String xml = request.getParameter("xml");
        
		int batchConfigId = Integer.parseInt(props.getProperty("batchConfigId"));
		String clientWsdd = props.getProperty("clientWsdd");
		String WSLocatorJob = props.getProperty("WSLocatorJob");
		String username = props.getProperty("username");
		String password = props.getProperty("password");
		
		logger.info("batchConfigId = " + batchConfigId);
		logger.info("clientWsdd = " + clientWsdd);
		logger.info("WSLocatorJob = " + WSLocatorJob);
		logger.info("username = " + username);
		logger.info("password = " + password);
		//logger.info("tempFolder = " + tempFolder);
		//logger.info("WSLocatorCorrespondence = " + WSLocatorCorrespondence);
        
        try {
            //System.out.println("Execute preview called");

            JobAPIWebServiceLocator jobwsLocator = new JobAPIWebServiceLocator(new FileProvider(clientWsdd));
            JobAPIWeb jobWeb = jobwsLocator.getJobAPIWebWrapped(new URL(WSLocatorJob));

            // add the username/password into the webservice stub
            Stub Jobstub = (Stub) jobWeb;
            Jobstub.setUsername(username);
            Jobstub.setPassword(password);
            
            // get a reference to the web service
            ExternalJobRequestAPI externalRequest = new ExternalJobRequestAPI();
            // set the batch config source
            externalRequest.setBatchConfigResID(batchConfigId);

            // pass the data directly as byte stream
            externalRequest.setTransactionData(xml.getBytes());
            //externalRequest.setTransactionData(data);
            
            // set various options
            externalRequest.setFinOption(3); // 3=none
            externalRequest.setJobType(0); // 0=batch
            externalRequest.setPriority(0); // 0=lowest
            externalRequest.setTransactionRange("");
            externalRequest.setProperties(null);

            // execute preview
            PackageAPI result = jobWeb.executePreview(externalRequest);
            if (result == null) {
                throw new Exception("Error executing preview.");
            }

            String filename = "JobAPIWeb-executePreview" + System.currentTimeMillis();

            ChannelDocumentAPI[] masterChanDocs = result.getMasterChannels();
            if (masterChanDocs == null) {
                throw new Exception("ChannelDocumentAPI.getMasterChannels() returned null");
            }

            for (int i = 0; i < masterChanDocs.length; i++) {
                ChannelDocumentAPI doc = masterChanDocs[i];
                byte[] data = doc.getData();
                String format = doc.getFormatString();
                //System.out.println((i+1) + " channel format: " + format);
                String contentType;
                if (format.equals("pdf")) {
                    contentType = "application/pdf";
                } else if (format.equals("ps")) {
                    contentType = "application/postscript";
                } else if (format.equals("pcl")) {
                    contentType = "application/pcl";
                } else if (format.equals("afp")) {
                    contentType = "application/vnd.ibm.modcap";
                } else if (format.equals("html")) {
                    contentType = "text/html";
                } else if (format.equals("sms")) {
                    contentType = "text/plain";
                } else if (format.equals("txt")) {
                    contentType = "text/plain";
                } else if (format.equals("xml")) {
                    contentType = "text/xml";
                } else if (format.equals("doc")) {
                    contentType = "application/wordml";
                } else {
                    FileNameMap map = URLConnection.getFileNameMap();
                    contentType = map.getContentTypeFor(filename);
                }
                
                logger.info("contentType = " + contentType);

                // stream preview output content in response
                response.setContentType(contentType);
                response.setContentLength(data.length);
                OutputStream os = response.getOutputStream();
                os.write(data, 0, data.length);
                os.close();
            }

        } catch (Exception e) {
            logger.error(e);
            request.setAttribute("error", e);
            request.setAttribute("errorMessage", e.getMessage());
            e.printStackTrace();
            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
            rd.forward(request, response);
        }
    }
}