package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "income")
public class OtherIncomeItem {
	private float amount;
	private String frequency;
	private boolean isTribal;
	private String otherIncomeType;

	@XmlElement
	public float getAmount() {
		return amount;
	}

	public void setAmount(float amount) {
		this.amount = amount;
	}

	@XmlElement
	public String getFrequency() {
		return frequency;
	}

	public void setFrequency(String frequency) {
		this.frequency = frequency;
	}

	@XmlElement
	public boolean getIsTribal() {
		return isTribal;
	}

	public void setIsTribal(boolean isTribal) {
		this.isTribal = isTribal;
	}

	@XmlElement
	public String getOtherIncomeType() {
		return otherIncomeType;
	}

	public void setOtherIncomeType(String otherIncomeType) {
		this.otherIncomeType = otherIncomeType;
	}

	public OtherIncomeItem() { }
}
