package gov.nv.dwss.medicaid.application.web.bean;

import gov.nv.dwss.medicaid.application.web.model.HealthInsuranceInfo;
import gov.nv.dwss.medicaid.application.web.model.OtherInsurance;

import java.io.Serializable;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

@Component
@Scope(value="session", proxyMode=ScopedProxyMode.TARGET_CLASS)
public class HealthInsuranceInfoBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private HealthInsuranceInfo healthInsuranceInfo;
	
	public HealthInsuranceInfoBean() {
		this.healthInsuranceInfo = new HealthInsuranceInfo();
		healthInsuranceInfo.setOtherInsurance(new OtherInsurance());
	}
	
	public void updateHealthInsuranceInfo(HealthInsuranceInfo healthInsuranceInfo) {
		this.healthInsuranceInfo = healthInsuranceInfo;
	}
	
	public HealthInsuranceInfo getHealthInsuranceInfo() {
		return this.healthInsuranceInfo;
	}
}
