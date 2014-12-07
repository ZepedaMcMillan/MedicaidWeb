package gov.nv.dwss.medicaid.application.web.model;

import java.util.Date;
import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "insuranceFromJobs")
public class InsuranceFromJobs {
	private Date coverageDate;
	private String employeeName;
	private String employeeSSN;
	private Address employerAddress;
	private String employerEIN;
	private String employerName;
	private String employerPhone;
	private String[] familyMembersCovered;
	private String isCoveredNext3Months;
	private String isCoveredNextYear;
	private String isEligible;
	private JobInsuranceContact jobInsuranceContact;
	private String lowCostPremium;
	private String meetsMinimumStandards;
	private NewYearPlanChanges newYearPlanChanges;
	private List<PeopleCovered> peopleCovered;
	private String premiumFrequency;

	@XmlElement
	public Date getCoverageDate() {
		return coverageDate;
	}

	public void setCoverageDate(Date coverageDate) {
		this.coverageDate = coverageDate;
	}

	@XmlElement
	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	@XmlElement
	public String getEmployeeSSN() {
		return employeeSSN;
	}

	public void setEmployeeSSN(String employeeSSN) {
		this.employeeSSN = employeeSSN;
	}

	@XmlElement
	public Address getEmployerAddress() {
		return employerAddress;
	}

	public void setEmployerAddress(Address employerAddress) {
		this.employerAddress = employerAddress;
	}

	@XmlElement
	public String getEmployerEIN() {
		return employerEIN;
	}

	public void setEmployerEIN(String employerEIN) {
		this.employerEIN = employerEIN;
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

	@XmlElement(name = "familyMemberCovered")
	@XmlElementWrapper(name = "familyMembersCovered")
	public String[] getFamilyMembersCovered() {
		return familyMembersCovered;
	}

	public void setFamilyMembersCovered(String[] familyMembersCovered) {
		this.familyMembersCovered = familyMembersCovered;
	}

	@XmlElement
	public String getIsCoveredNext3Months() {
		return isCoveredNext3Months;
	}

	public void setIsCoveredNext3Months(String isCoveredNext3Months) {
		this.isCoveredNext3Months = isCoveredNext3Months;
	}

	@XmlElement
	public String getIsCoveredNextYear() {
		return isCoveredNextYear;
	}

	public void setIsCoveredNextYear(String isCoveredNextYear) {
		this.isCoveredNextYear = isCoveredNextYear;
	}

	@XmlElement
	public String getIsEligible() {
		return isEligible;
	}

	public void setIsEligible(String isEligible) {
		this.isEligible = isEligible;
	}

	@XmlElement
	public JobInsuranceContact getJobInsuranceContact() {
		return jobInsuranceContact;
	}

	public void setJobInsuranceContact(JobInsuranceContact jobInsuranceContact) {
		this.jobInsuranceContact = jobInsuranceContact;
	}

	@XmlElement
	public String getLowCostPremium() {
		return lowCostPremium;
	}

	public void setLowCostPremium(String lowCostPremium) {
		this.lowCostPremium = lowCostPremium;
	}

	@XmlElement
	public String getMeetsMinimumStandards() {
		return meetsMinimumStandards;
	}

	public void setMeetsMinimumStandards(String meetsMinimumStandards) {
		this.meetsMinimumStandards = meetsMinimumStandards;
	}

	@XmlElement
	public NewYearPlanChanges getNewYearPlanChanges() {
		return newYearPlanChanges;
	}

	public void setNewYearPlanChanges(NewYearPlanChanges newYearPlanChanges) {
		this.newYearPlanChanges = newYearPlanChanges;
	}

	@XmlElementWrapper(name = "peopleCovered")
	@XmlElement(name = "personCovered")
	public List<PeopleCovered> getPeopleCovered() {
		return peopleCovered;
	}

	public void setPeopleCovered(List<PeopleCovered> peopleCovered) {
		this.peopleCovered = peopleCovered;
	}

	@XmlElement
	public String getPremiumFrequency() {
		return premiumFrequency;
	}

	public void setPremiumFrequency(String premiumFrequency) {
		this.premiumFrequency = premiumFrequency;
	}

	public InsuranceFromJobs() {
	}

	public InsuranceFromJobs(Date coverageDate, String employeeName,
			String employeeSSN, Address employerAddress, String employerEIN,
			String employerName, String employerPhone,
			String[] familyMembersCovered, String isCoveredNext3Months,
			String isCoveredNextYear, String isEligible,
			JobInsuranceContact jobInsuranceContact, String lowCostPremium,
			String meetsMinimumStandards,
			NewYearPlanChanges newYearPlanChanges,
			List<PeopleCovered> peopleCovered, String premiumFrequency) {
		this.coverageDate = coverageDate;
		this.employeeName = employeeName;
		this.employeeSSN = employeeSSN;
		this.employerAddress = employerAddress;
		this.employerEIN = employerEIN;
		this.employerName = employerName;
		this.employerPhone = employerPhone;
		this.familyMembersCovered = familyMembersCovered;
		this.isCoveredNext3Months = isCoveredNext3Months;
		this.isCoveredNextYear = isCoveredNextYear;
		this.isEligible = isEligible;
		this.jobInsuranceContact = jobInsuranceContact;
		this.lowCostPremium = lowCostPremium;
		this.meetsMinimumStandards = meetsMinimumStandards;
		this.newYearPlanChanges = newYearPlanChanges;
		this.peopleCovered = peopleCovered;
		this.premiumFrequency = premiumFrequency;
	}
}
