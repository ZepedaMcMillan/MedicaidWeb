package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "taxInfo")
public class TaxInfo {
	private ClaimedOnOther claimedOnOther;
	private String dependents;
	private String filingFederalTax;
	private String filingJoint;
	private String isClaimedOnOther;
	private String isClaimingDependents;
	private String spouseName;

	@XmlElement
	public ClaimedOnOther getClaimedOnOther() {
		return claimedOnOther;
	}

	public void setClaimedOnOther(ClaimedOnOther claimedOnOther) {
		this.claimedOnOther = claimedOnOther;
	}

	@XmlElement
	public String getDependents() {
		return dependents;
	}

	public void setDependents(String dependents) {
		this.dependents = dependents;
	}

	@XmlElement
	public String getFilingFederalTax() {
		return filingFederalTax;
	}

	public void setFilingFederalTax(String filingFederalTax) {
		this.filingFederalTax = filingFederalTax;
	}

	@XmlElement
	public String getFilingJoint() {
		return filingJoint;
	}

	public void setFilingJoint(String filingJoint) {
		this.filingJoint = filingJoint;
	}

	@XmlElement
	public String getIsClaimedOnOther() {
		return isClaimedOnOther;
	}

	public void setIsClaimedOnOther(String isClaimedOnOther) {
		this.isClaimedOnOther = isClaimedOnOther;
	}

	@XmlElement
	public String getIsClaimingDependents() {
		return isClaimingDependents;
	}

	public void setIsClaimingDependents(String isClaimingDependents) {
		this.isClaimingDependents = isClaimingDependents;
	}

	@XmlElement
	public String getSpouseName() {
		return spouseName;
	}

	public void setSpouseName(String spouseName) {
		this.spouseName = spouseName;
	}

	public TaxInfo() {
	}

	public TaxInfo(ClaimedOnOther claimedOnOther, String dependents,
			String filingFederalTax, String filingJoint,
			String isClaimedOnOther, String isClaimingDependents,
			String spouseName) {
		this.claimedOnOther = claimedOnOther;
		this.dependents = dependents;
		this.filingFederalTax = filingFederalTax;
		this.filingJoint = filingJoint;
		this.isClaimedOnOther = isClaimedOnOther;
		this.isClaimingDependents = isClaimingDependents;
		this.spouseName = spouseName;
	}

}
