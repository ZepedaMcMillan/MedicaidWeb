package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "otherAssistance")
public class OtherAssistance {
	private String ageWhenLeft;
	private String applyingForOther;
	private String beenInFosterCare;
	private String billMonths;
	private String childCare;
	private String hasEligibleImmigration;
	private String hasPastMedicalBills;
	private String hasPublicEmployeeCoverage;
	private String hasSSI;
	private String immigrationIdNumber;
	private String immigrationType;
	private String isDisabledBlind;
	private String isNative;
	private String isPrimaryCareTaker;
	private String isStudent;
	private String isUSCitizen;
	private String isVeteran;
	private String livedSince1996;
	private String needsDailyAssistance;
	private String receivedHealthcare;
	private String ssn;
	private String stateFosterCare;
	private String tribe;

	@XmlElement
	public String getAgeWhenLeft() {
		return ageWhenLeft;
	}

	public void setAgeWhenLeft(String ageWhenLeft) {
		this.ageWhenLeft = ageWhenLeft;
	}

	@XmlElement
	public String getApplyingForOther() {
		return applyingForOther;
	}

	public void setApplyingForOther(String applyingForOther) {
		this.applyingForOther = applyingForOther;
	}

	@XmlElement
	public String getBeenInFosterCare() {
		return beenInFosterCare;
	}

	public void setBeenInFosterCare(String beenInFosterCare) {
		this.beenInFosterCare = beenInFosterCare;
	}

	@XmlElement
	public String getBillMonths() {
		return billMonths;
	}

	public void setBillMonths(String billMonths) {
		this.billMonths = billMonths;
	}

	@XmlElement
	public String getChildCare() {
		return childCare;
	}

	public void setChildCare(String childCare) {
		this.childCare = childCare;
	}

	@XmlElement
	public String getHasEligibleImmigration() {
		return hasEligibleImmigration;
	}

	public void setHasEligibleImmigration(String hasEligibleImmigration) {
		this.hasEligibleImmigration = hasEligibleImmigration;
	}

	@XmlElement
	public String getHasPastMedicalBills() {
		return hasPastMedicalBills;
	}

	public void setHasPastMedicalBills(String hasPastMedicalBills) {
		this.hasPastMedicalBills = hasPastMedicalBills;
	}

	@XmlElement
	public String getHasPublicEmployeeCoverage() {
		return hasPublicEmployeeCoverage;
	}

	public void setHasPublicEmployeeCoverage(String hasPublicEmployeeCoverage) {
		this.hasPublicEmployeeCoverage = hasPublicEmployeeCoverage;
	}

	@XmlElement
	public String getHasSSI() {
		return hasSSI;
	}

	public void setHasSSI(String hasSSI) {
		this.hasSSI = hasSSI;
	}

	@XmlElement
	public String getImmigrationIdNumber() {
		return immigrationIdNumber;
	}

	public void setImmigrationIdNumber(String immigrationIdNumber) {
		this.immigrationIdNumber = immigrationIdNumber;
	}

	@XmlElement
	public String getImmigrationType() {
		return immigrationType;
	}

	public void setImmigrationType(String immigrationType) {
		this.immigrationType = immigrationType;
	}

	@XmlElement
	public String getIsDisabledBlind() {
		return isDisabledBlind;
	}

	public void setIsDisabledBlind(String isDisabledBlind) {
		this.isDisabledBlind = isDisabledBlind;
	}

	@XmlElement
	public String getIsNative() {
		return isNative;
	}

	public void setIsNative(String isNative) {
		this.isNative = isNative;
	}

	@XmlElement
	public String getIsPrimaryCareTaker() {
		return isPrimaryCareTaker;
	}

	public void setIsPrimaryCareTaker(String isPrimaryCareTaker) {
		this.isPrimaryCareTaker = isPrimaryCareTaker;
	}

	@XmlElement
	public String getIsStudent() {
		return isStudent;
	}

	public void setIsStudent(String isStudent) {
		this.isStudent = isStudent;
	}

	@XmlElement
	public String getIsUSCitizen() {
		return isUSCitizen;
	}

	public void setIsUSCitizen(String isUSCitizen) {
		this.isUSCitizen = isUSCitizen;
	}

	@XmlElement
	public String getIsVeteran() {
		return isVeteran;
	}

	public void setIsVeteran(String isVeteran) {
		this.isVeteran = isVeteran;
	}

	@XmlElement
	public String getLivedSince1996() {
		return livedSince1996;
	}

	public void setLivedSince1996(String livedSince1996) {
		this.livedSince1996 = livedSince1996;
	}

	@XmlElement
	public String getNeedsDailyAssistance() {
		return needsDailyAssistance;
	}

	public void setNeedsDailyAssistance(String needsDailyAssistance) {
		this.needsDailyAssistance = needsDailyAssistance;
	}

	@XmlElement
	public String getReceivedHealthcare() {
		return receivedHealthcare;
	}

	public void setReceivedHealthcare(String receivedHealthcare) {
		this.receivedHealthcare = receivedHealthcare;
	}

	@XmlElement
	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	@XmlElement
	public String getStateFosterCare() {
		return stateFosterCare;
	}

	public void setStateFosterCare(String stateFosterCare) {
		this.stateFosterCare = stateFosterCare;
	}

	@XmlElement
	public String getTribe() {
		return tribe;
	}

	public void setTribe(String tribe) {
		this.tribe = tribe;
	}

	public OtherAssistance() {
	}

	public OtherAssistance(String ageWhenLeft, String applyingForOther,
			String beenInFosterCare, String billMonths, String childCare,
			String hasEligibleImmigration, String hasPastMedicalBills,
			String hasPublicEmployeeCoverage, String hasSSI,
			String immigrationIdNumber, String immigrationType,
			String isDisabledBlind, String isNative, String isPrimaryCareTaker,
			String isStudent, String isUSCitizen, String isVeteran,
			String livedSince1996, String needsDailyAssistance,
			String receivedHealthcare, String ssn, String stateFosterCare,
			String tribe) {
		this.ageWhenLeft = ageWhenLeft;
		this.applyingForOther = applyingForOther;
		this.beenInFosterCare = beenInFosterCare;
		this.billMonths = billMonths;
		this.childCare = childCare;
		this.hasEligibleImmigration = hasEligibleImmigration;
		this.hasPastMedicalBills = hasPastMedicalBills;
		this.hasPublicEmployeeCoverage = hasPublicEmployeeCoverage;
		this.hasSSI = hasSSI;
		this.immigrationIdNumber = immigrationIdNumber;
		this.immigrationType = immigrationType;
		this.isDisabledBlind = isDisabledBlind;
		this.isNative = isNative;
		this.isPrimaryCareTaker = isPrimaryCareTaker;
		this.isStudent = isStudent;
		this.isUSCitizen = isUSCitizen;
		this.isVeteran = isVeteran;
		this.livedSince1996 = livedSince1996;
		this.needsDailyAssistance = needsDailyAssistance;
		this.receivedHealthcare = receivedHealthcare;
		this.ssn = ssn;
		this.stateFosterCare = stateFosterCare;
		this.tribe = tribe;
	}
}
