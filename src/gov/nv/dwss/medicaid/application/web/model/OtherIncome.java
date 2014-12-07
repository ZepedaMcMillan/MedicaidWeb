package gov.nv.dwss.medicaid.application.web.model;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "otherIncome")
public class OtherIncome {
	private String isIncomeSteady;
	private List<OtherIncomeItem> otherIncomeList;
	private String otherIncomeReceived;
	private String expectedIncomeThisYear;
	private String expectedIncomeNextYear;

	@XmlElement
	public String getExpectedIncomeThisYear() {
		return expectedIncomeThisYear;
	}

	public void setExpectedIncomeThisYear(String expectedIncomeThisYear) {
		this.expectedIncomeThisYear = expectedIncomeThisYear;
	}

	@XmlElement
	public String getExpectedIncomeNextYear() {
		return expectedIncomeNextYear;
	}

	public void setExpectedIncomeNextYear(String expectedIncomeNextYear) {
		this.expectedIncomeNextYear = expectedIncomeNextYear;
	}

	@XmlElement
	public String getIsIncomeSteady() {
		return isIncomeSteady;
	}

	public void setIsIncomeSteady(String isIncomeSteady) {
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
	public String getOtherIncomeReceived() {
		return otherIncomeReceived;
	}

	public void setOtherIncomeReceived(String otherIncomeReceived) {
		this.otherIncomeReceived = otherIncomeReceived;
	}

	public OtherIncome() {
	}

	public OtherIncome(String isIncomeSteady,
			List<OtherIncomeItem> otherIncomeList, String otherIncomeReceived) {
		super();
		this.isIncomeSteady = isIncomeSteady;
		this.otherIncomeList = otherIncomeList;
		this.otherIncomeReceived = otherIncomeReceived;
	}
}
