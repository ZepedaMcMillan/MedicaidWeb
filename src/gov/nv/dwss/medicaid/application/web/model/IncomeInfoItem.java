package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "income")
public class IncomeInfoItem {
	private Address employerAddress;
	private String employerName;
	private String employerPhone;
	private String isSelfEmployed;
	private String monthlyNetIncome;
	private String payFrequency;
	private String typeOfWork;
	private String wagesPerPayPeriod;
	private String weekHoursWorked;

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
	public String getIsSelfEmployed() {
		return isSelfEmployed;
	}

	public void setIsSelfEmployed(String isSelfEmployed) {
		this.isSelfEmployed = isSelfEmployed;
	}

	@XmlElement
	public String getMonthlyNetIncome() {
		return monthlyNetIncome;
	}

	public void setMonthlyNetIncome(String monthlyNetIncome) {
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
	public String getWagesPerPayPeriod() {
		return wagesPerPayPeriod;
	}

	public void setWagesPerPayPeriod(String wagesPerPayPeriod) {
		this.wagesPerPayPeriod = wagesPerPayPeriod;
	}

	@XmlElement
	public String getWeekHoursWorked() {
		return weekHoursWorked;
	}

	public void setWeekHoursWorked(String weekHoursWorked) {
		this.weekHoursWorked = weekHoursWorked;
	}

	public IncomeInfoItem() {
	}

	public IncomeInfoItem(Address employerAddress, String employerName,
			String employerPhone, String isSelfEmployed,
			String monthlyNetIncome, String payFrequency, String typeOfWork,
			String wagesPerPayPeriod, String weekHoursWorked) {
		super();
		this.employerAddress = employerAddress;
		this.employerName = employerName;
		this.employerPhone = employerPhone;
		this.isSelfEmployed = isSelfEmployed;
		this.monthlyNetIncome = monthlyNetIncome;
		this.payFrequency = payFrequency;
		this.typeOfWork = typeOfWork;
		this.wagesPerPayPeriod = wagesPerPayPeriod;
		this.weekHoursWorked = weekHoursWorked;
	}
}
