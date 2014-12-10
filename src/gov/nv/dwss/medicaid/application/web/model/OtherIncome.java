package gov.nv.dwss.medicaid.application.web.model;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "otherIncome")
public class OtherIncome {
	private boolean isIncomeSteady;
	private List<OtherIncomeItem> otherIncomeList;
	private boolean otherIncomeReceived;
	private float expectedIncomeThisYear;
	private float expectedIncomeNextYear;

	@XmlElement
	public float getExpectedIncomeThisYear() {
		return expectedIncomeThisYear;
	}

	public void setExpectedIncomeThisYear(float expectedIncomeThisYear) {
		this.expectedIncomeThisYear = expectedIncomeThisYear;
	}

	@XmlElement
	public float getExpectedIncomeNextYear() {
		return expectedIncomeNextYear;
	}

	public void setExpectedIncomeNextYear(float expectedIncomeNextYear) {
		this.expectedIncomeNextYear = expectedIncomeNextYear;
	}

	@XmlElement
	public boolean getIsIncomeSteady() {
		return isIncomeSteady;
	}

	public void setIsIncomeSteady(boolean isIncomeSteady) {
		this.isIncomeSteady = isIncomeSteady;
	}

	@XmlElementWrapper(name="incomeItems")
	@XmlElement(name = "incomeItem")
	public List<OtherIncomeItem> getOtherIncomeList() {
		return otherIncomeList;
	}

	public void setOtherIncomeList(List<OtherIncomeItem> otherIncomeList) {
		this.otherIncomeList = otherIncomeList;
	}

	@XmlElement
	public boolean getOtherIncomeReceived() {
		return otherIncomeReceived;
	}

	public void setOtherIncomeReceived(boolean otherIncomeReceived) {
		this.otherIncomeReceived = otherIncomeReceived;
	}

	public OtherIncome() { }
}
