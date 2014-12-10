package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "yearlyIncome")
public class YearlyIncome {
	private float currentAnnualIncome;
	private float nextAnnualIncome;

	@XmlElement
	public float getCurrentAnnualIncome() {
		return currentAnnualIncome;
	}

	public void setCurrentAnnualIncome(float currentAnnualIncome) {
		this.currentAnnualIncome = currentAnnualIncome;
	}

	@XmlElement
	public float getNextAnnualIncome() {
		return nextAnnualIncome;
	}

	public void setNextAnnualIncome(float nextAnnualIncome) {
		this.nextAnnualIncome = nextAnnualIncome;
	}

	public YearlyIncome() { }
}
