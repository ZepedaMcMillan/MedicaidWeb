package gov.nv.dwss.medicaid.application.web.bean;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

@Component
@Scope(value="session", proxyMode=ScopedProxyMode.TARGET_CLASS)
public class NavigationBean {
	private String navItemSelected;

	public String getNavItemSelected() {
		return navItemSelected;
	}

	public void setNavItemSelected(String navItemSelected) {
		this.navItemSelected = navItemSelected;
	}
	
	public NavigationBean() {
		this.navItemSelected = "hh";
	}	
}
