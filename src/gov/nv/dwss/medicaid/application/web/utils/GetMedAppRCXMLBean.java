package gov.nv.dwss.medicaid.application.web.utils;

import java.util.Properties;

public class GetMedAppRCXMLBean {
	private String thunderheadServer;
	private String username;
	public void setParamValues(String paramValues){
		Properties props = new PropertiesFileReader().getProperties();
		this.username = props.getProperty("username");
		this.thunderheadServer = props.getProperty("thunderheadServer");
	}
	
	public String getUsername(){
		return username;
	}
	
	public String getThunderheadServer(){
		return thunderheadServer;
	}
	
}
