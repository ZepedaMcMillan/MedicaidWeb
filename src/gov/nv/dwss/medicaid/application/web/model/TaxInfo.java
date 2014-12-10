package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "taxInfo")
public class TaxInfo {
	private ClaimedOnOther claimedOnOther;
	private String dependents;
	private boolean filingFederalTax;
	private boolean filingJoint;
	private boolean isClaimedOnOther;
	private boolean isClaimingDependents;
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
	public boolean getFilingFederalTax() {
		return filingFederalTax;
	}

	public void setFilingFederalTax(boolean filingFederalTax) {
		this.filingFederalTax = filingFederalTax;
	}

	@XmlElement
	public boolean getFilingJoint() {
		return filingJoint;
	}

	public void setFilingJoint(boolean filingJoint) {
		this.filingJoint = filingJoint;
	}

	@XmlElement
	public boolean getIsClaimedOnOther() {
		return isClaimedOnOther;
	}

	public void setIsClaimedOnOther(boolean isClaimedOnOther) {
		this.isClaimedOnOther = isClaimedOnOther;
	}

	@XmlElement
	public boolean getIsClaimingDependents() {
		return isClaimingDependents;
	}

	public void setIsClaimingDependents(boolean isClaimingDependents) {
		this.isClaimingDependents = isClaimingDependents;
	}

	@XmlElement
	public String getSpouseName() {
		return spouseName;
	}

	public void setSpouseName(String spouseName) {
		this.spouseName = spouseName;
	}

	public TaxInfo() { }
}
