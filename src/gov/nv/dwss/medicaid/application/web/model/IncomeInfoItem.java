package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "income")
public class IncomeInfoItem {
	private Address employerAddress;
	private String employerName;
	private String employerPhone;
	private boolean isSelfEmployed;
	private float monthlyNetIncome;
	private String payFrequency;
	private String typeOfWork;
	private float wagesPerPayPeriod;
	private int weekHoursWorked;

	@XmlElement
	public Address getEmployerAddress() {
		return employerAddress;
	}

	public void setEmployerAddress(Address employerAddress) {
		this.employerAddress = employerAddress;
	}

	@XmlElement
	public String getEmployerName() {
		return employerName;
	}

	public void setEmployerName(String employerName) {
		this.employerName = employerName;
	}

	@XmlElement
	public String getEmployerPhone() {
		return employerPhone;
	}

	public void setEmployerPhone(String employerPhone) {
		this.employerPhone = employerPhone;
	}

	@XmlElement
	public boolean getIsSelfEmployed() {
		return isSelfEmployed;
	}

	public void setIsSelfEmployed(boolean isSelfEmployed) {
		this.isSelfEmployed = isSelfEmployed;
	}

	@XmlElement
	public float getMonthlyNetIncome() {
		return monthlyNetIncome;
	}

	public void setMonthlyNetIncome(float monthlyNetIncome) {
		this.monthlyNetIncome = monthlyNetIncome;
	}

	@XmlElement
	public String getPayFrequency() {
		return payFrequency;
	}

	public void setPayFrequency(String payFrequency) {
		this.payFrequency = payFrequency;
	}

	@XmlElement
	public String getTypeOfWork() {
		return typeOfWork;
	}

	public void setTypeOfWork(String typeOfWork) {
		this.typeOfWork = typeOfWork;
	}

	@XmlElement
	public float getWagesPerPayPeriod() {
		return wagesPerPayPeriod;
	}

	public void setWagesPerPayPeriod(float wagesPerPayPeriod) {
		this.wagesPerPayPeriod = wagesPerPayPeriod;
	}

	@XmlElement
	public int getWeekHoursWorked() {
		return weekHoursWorked;
	}

	public void setWeekHoursWorked(int weekHoursWorked) {
		this.weekHoursWorked = weekHoursWorked;
	}

	public IncomeInfoItem() {
	}
}
