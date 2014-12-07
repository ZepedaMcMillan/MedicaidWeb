package gov.nv.dwss.medicaid.application.web.utils;

import java.io.IOException;

import java.net.URL;
import java.util.Properties;

import javax.naming.InitialContext;
import javax.naming.NamingException;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;


public class PropertiesFileReader {
	static Logger log = Logger.getLogger(PropertiesFileReader.class.getName());
	
	public Properties getProperties() {
		Properties props = new Properties();
		
		try {
			URL propUrl = getPropertyFilesURL();
			
			URL systemConfigUrl = new URL(propUrl.toString() + ApplConstants.MEDICAID_PROPERTY_FILE);
			
			props.load(systemConfigUrl.openStream());			

			log.info("reading property file from = " +  systemConfigUrl.getFile());
			
			PropertyConfigurator.configure(props);

		}catch (NamingException e) {
			log.error("Unable to load the property file. The jndi url is " + ApplConstants.PROPERTY_FILES_URL,e);
		} catch (IOException e) {
			log.error("Unable to load the property file. The jndi url is " + ApplConstants.PROPERTY_FILES_URL,e);
		}catch (Exception e) {
        	log.error("Unable to load the property file. The jndi url is " + ApplConstants.PROPERTY_FILES_URL,e);
        }
		return props;
	}
	
	public URL getPropertyFilesURL() throws NamingException{
		InitialContext context;
		context = new InitialContext();
		String jndi = ApplConstants.PROPERTY_FILES_URL;
		return (URL) context.lookup(jndi);
	}
	
	public String getWSDDFilePath(){
		String path = null;
		try {
			URL url = getPropertyFilesURL();
			path = url.getFile() + ApplConstants.MEDICAID_CLIENT_WSDD;
		} catch (NamingException e) {
			log.error("Unable to load the property file. The jndi url is " + ApplConstants.PROPERTY_FILES_URL,e);
		}
		
		return path;
    }
}
