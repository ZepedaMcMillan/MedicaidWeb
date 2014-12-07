package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "income")
public class OtherIncomeItem {
	private String amount;
	private String frequency;
	private String isTribal;
	private String otherIncomeType;

	@XmlElement
	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
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
	public String getIsTribal() {
		return isTribal;
	}

	public void setIsTribal(String isTribal) {
		this.isTribal = isTribal;
	}

	@XmlElement
	public String getOtherIncomeType() {
		return otherIncomeType;
	}

	public void setOtherIncomeType(String otherIncomeType) {
		this.otherIncomeType = otherIncomeType;
	}

	public OtherIncomeItem() {
	}

	public OtherIncomeItem(String amount, String frequency, String isTribal,
			String otherIncomeType) {
		this.amount = amount;
		this.frequency = frequency;
		this.isTribal = isTribal;
		this.otherIncomeType = otherIncomeType;
	}
}
