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
	private boolean isCoveredNext3Months;
	private boolean isCoveredNextYear;
	private boolean isEligible;
	private JobInsuranceContact jobInsuranceContact;
	private float lowCostPremium;
	private boolean meetsMinimumStandards;
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
	public boolean getIsCoveredNext3Months() {
		return isCoveredNext3Months;
	}

	public void setIsCoveredNext3Months(boolean isCoveredNext3Months) {
		this.isCoveredNext3Months = isCoveredNext3Months;
	}

	@XmlElement
	public boolean getIsCoveredNextYear() {
		return isCoveredNextYear;
	}

	public void setIsCoveredNextYear(boolean isCoveredNextYear) {
		this.isCoveredNextYear = isCoveredNextYear;
	}

	@XmlElement
	public boolean getIsEligible() {
		return isEligible;
	}

	public void setIsEligible(boolean isEligible) {
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
	public float getLowCostPremium() {
		return lowCostPremium;
	}

	public void setLowCostPremium(float lowCostPremium) {
		this.lowCostPremium = lowCostPremium;
	}

	@XmlElement
	public boolean getMeetsMinimumStandards() {
		return meetsMinimumStandards;
	}

	public void setMeetsMinimumStandards(boolean meetsMinimumStandards) {
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

	public InsuranceFromJobs() { }
}
