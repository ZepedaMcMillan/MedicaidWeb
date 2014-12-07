package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "yearlyIncome")
public class YearlyIncome {
	private String currentAnnualIncome;
	private String nextAnnualIncome;

	@XmlElement
	public String getCurrentAnnualIncome() {
		return currentAnnualIncome;
	}

	public void setCurrentAnnualIncome(String currentAnnualIncome) {
		this.currentAnnualIncome = currentAnnualIncome;
	}

	@XmlElement
	public String getNextAnnualIncome() {
		return nextAnnualIncome;
	}

	public void setNextAnnualIncome(String nextAnnualIncome) {
		this.nextAnnualIncome = nextAnnualIncome;
	}

	public YearlyIncome() {
	}

	public YearlyIncome(String currentAnnualIncome, String nextAnnualIncome) {
		this.currentAnnualIncome = currentAnnualIncome;
		this.nextAnnualIncome = nextAnnualIncome;
	}
}
