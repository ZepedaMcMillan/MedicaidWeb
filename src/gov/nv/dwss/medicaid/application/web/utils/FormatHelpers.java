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
	
	public static float formatMoney(String money) {
		try {
			return Float.parseFloat(money);
		} catch (Exception ex) {
			return 0;
		}
	}
	
	public static int formatNumber(String number) {
		try {
			return Integer.parseInt(number);
		} catch (Exception ex) {
			return 0;
		}
	}
	
	public static boolean formatBool(String value) {
		try {
			return Boolean.parseBoolean(value);
		} catch (Exception ex) {
			return false;
		}
	}
	
}
