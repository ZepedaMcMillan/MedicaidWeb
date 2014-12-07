package gov.nv.dwss.medicaid.application.web.bean;

import gov.nv.dwss.medicaid.application.web.model.AuthorizedRep;
import gov.nv.dwss.medicaid.application.web.model.CoverageRenewalAPTC;
import gov.nv.dwss.medicaid.application.web.model.OtherInfo;

import java.io.Serializable;
import java.util.ArrayList;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

@Component
@Scope(value="session", proxyMode=ScopedProxyMode.TARGET_CLASS)
public class OtherInfoBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private OtherInfo otherInfo;
	
	public OtherInfoBean() {
		this.otherInfo = new OtherInfo();
		this.otherInfo.setCoverageRenewalAPTC(new CoverageRenewalAPTC());
		this.otherInfo.setAuthorizedRep(new ArrayList<AuthorizedRep>());
	}
	
	public void updateOtherInfo(OtherInfo otherInfo) {
		this.otherInfo = otherInfo;
	}
	
	public OtherInfo getOtherInfo() {
		return this.otherInfo;
	}
}
