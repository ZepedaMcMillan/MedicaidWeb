package gov.nv.dwss.medicaid.application.web.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class FormatHelpers {
	
	public static Date formatDate(String date) {
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
		try {
			return format.parse(date);
		} catch (Exception ex) {
			return null;			
		}
	}
	
}
