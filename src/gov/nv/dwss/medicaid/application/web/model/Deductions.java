package gov.nv.dwss.medicaid.application.web.model;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "deductions")
public class Deductions {

	private List<DeductionItem> deductionsList;
	private boolean haveDeductions;

	@XmlElementWrapper(name="deductionItems")
	@XmlElement(name = "deductionItem")
	public List<DeductionItem> getDeductionsList() {
		return deductionsList;
	}

	public void setDeductionsList(List<DeductionItem> deductionsList) {
		this.deductionsList = deductionsList;
	}

	@XmlElement
	public boolean getHaveDeductions() {
		return haveDeductions;
	}

	public void setHaveDeductions(boolean haveDeductions) {
		this.haveDeductions = haveDeductions;
	}

	public Deductions() {
	}

	public Deductions(List<DeductionItem> deductionsList, boolean haveDeductions) {
		super();
		this.deductionsList = deductionsList;
		this.haveDeductions = haveDeductions;
	}
}
