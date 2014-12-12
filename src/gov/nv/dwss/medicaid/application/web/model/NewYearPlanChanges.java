package gov.nv.dwss.medicaid.application.web.model;

import java.util.Date;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "newYearPlanChanges")
public class NewYearPlanChanges {
	private Date minCoverageDateChange;
	private boolean minCoverageOffered;
	private float minCoveragePremium;
	private String minPremiumFrequency;
	private boolean noCoverageOffered;

	@XmlElement
	public Date getMinCoverageDateChange() {
		return minCoverageDateChange;
	}

	public void setMinCoverageDateChange(Date minCoverageDateChange) {
		this.minCoverageDateChange = minCoverageDateChange;
	}

	@XmlElement
	public boolean getMinCoverageOffered() {
		return minCoverageOffered;
	}

	public void setMinCoverageOffered(boolean minCoverageOffered) {
		this.minCoverageOffered = minCoverageOffered;
	}

	@XmlElement
	public float getMinCoveragePremium() {
		return minCoveragePremium;
	}

	public void setMinCoveragePremium(float minCoveragePremium) {
		this.minCoveragePremium = minCoveragePremium;
	}

	@XmlElement
	public String getMinPremiumFrequency() {
		return minPremiumFrequency;
	}

	public void setMinPremiumFrequency(String minPremiumFrequency) {
		this.minPremiumFrequency = minPremiumFrequency;
	}

	@XmlElement
	public boolean getNoCoverageOffered() {
		return noCoverageOffered;
	}

	public void setNoCoverageOffered(boolean noCoverageOffered) {
		this.noCoverageOffered = noCoverageOffered;
	}

	public NewYearPlanChanges() { }
}
