package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "insuranceDetails")
public class OtherInsuranceItem {
	private String insuranceType;
	private String name;
	private String planName;
	private String policyNumber;

	@XmlElement
	public String getInsuranceType() {
		return insuranceType;
	}

	public void setInsuranceType(String insuranceType) {
		this.insuranceType = insuranceType;
	}

	@XmlElement
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@XmlElement
	public String getPlanName() {
		return planName;
	}

	public void setPlanName(String planName) {
		this.planName = planName;
	}

	@XmlElement
	public String getPolicyNumber() {
		return policyNumber;
	}

	public void setPolicyNumber(String policyNumber) {
		this.policyNumber = policyNumber;
	}

	public OtherInsuranceItem() {
	}

	public OtherInsuranceItem(String insuranceType, String name,
			String planName, String policyNumber) {
		this.insuranceType = insuranceType;
		this.name = name;
		this.planName = planName;
		this.policyNumber = policyNumber;
	}

}
