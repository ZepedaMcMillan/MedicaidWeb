package gov.nv.dwss.medicaid.application.web.model;

import java.util.Date;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "newYearPlanChanges")
public class NewYearPlanChanges {
	private Date minCoverageDateChange;
	private String minCoverageOffered;
	private String minCoveragePremium;
	private String minPremiumFrequency;
	private String noCoverageOffered;

	@XmlElement
	public Date getMinCoverageDateChange() {
		return minCoverageDateChange;
	}

	public void setMinCoverageDateChange(Date minCoverageDateChange) {
		this.minCoverageDateChange = minCoverageDateChange;
	}

	@XmlElement
	public String getMinCoverageOffered() {
		return minCoverageOffered;
	}

	public void setMinCoverageOffered(String minCoverageOffered) {
		this.minCoverageOffered = minCoverageOffered;
	}

	@XmlElement
	public String getMinCoveragePremium() {
		return minCoveragePremium;
	}

	public void setMinCoveragePremium(String minCoveragePremium) {
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
	public String getNoCoverageOffered() {
		return noCoverageOffered;
	}

	public void setNoCoverageOffered(String noCoverageOffered) {
		this.noCoverageOffered = noCoverageOffered;
	}

	public NewYearPlanChanges() {
	}

	public NewYearPlanChanges(Date minCoverageDateChange,
			String minCoverageOffered, String minCoveragePremium,
			String minPremiumFrequency, String noCoverageOffered) {
		super();
		this.minCoverageDateChange = minCoverageDateChange;
		this.minCoverageOffered = minCoverageOffered;
		this.minCoveragePremium = minCoveragePremium;
		this.minPremiumFrequency = minPremiumFrequency;
		this.noCoverageOffered = noCoverageOffered;
	}
}
