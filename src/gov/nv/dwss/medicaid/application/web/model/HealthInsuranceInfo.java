package gov.nv.dwss.medicaid.application.web.model;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class HealthInsuranceInfo {
	
	private List<InsuranceFromJobs> insuranceFromJobs;
	private OtherInsurance otherInsurance;
	private String hasHealthCoverage;
	
	@XmlElementWrapper(name="insuranceFromJobs")
	@XmlElement(name="insuranceFromJob")
	public List<InsuranceFromJobs> getInsuranceFromJobs() {
		return insuranceFromJobs;
	}
	public void setInsuranceFromJobs(List<InsuranceFromJobs> insuranceFromJobs) {
		this.insuranceFromJobs = insuranceFromJobs;
	}
	
	@XmlElement
	public OtherInsurance getOtherInsurance() {
		return otherInsurance;
	}
	public void setOtherInsurance(OtherInsurance otherInsurance) {
		this.otherInsurance = otherInsurance;
	}
	
	@XmlElement
	public String getHasHealthCoverage() {
		return hasHealthCoverage;
	}
	public void setHasHealthCoverage(String hasHealthCoverage) {
		this.hasHealthCoverage = hasHealthCoverage;
	}	
	
	public HealthInsuranceInfo(){}
	
	public HealthInsuranceInfo(List<InsuranceFromJobs> insuranceFromJobs,
			OtherInsurance otherInsurance) {
		this.insuranceFromJobs = insuranceFromJobs;
		this.otherInsurance = otherInsurance;
	}
}
