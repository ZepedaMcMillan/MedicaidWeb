package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="deduction")
public class DeductionItem {
	private float amount;
	private String type;
	private String frequency;
	
	@XmlElement
	public float getAmount() {
		return amount;
	}
	public void setAmount(float  amount) {
		this.amount =  amount;
	}
	
	@XmlElement
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@XmlElement
	public String getFrequency() {
		return frequency;
	}
	public void setFrequency(String frequency) {
		this.frequency = frequency;
	}
	
	public DeductionItem() {}
	
	public DeductionItem(float amount, String type, String frequency) {
		this.amount = amount;
		this.type = type;
		this.frequency = frequency;
	}
}
