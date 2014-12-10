package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "otherAssistance")
public class OtherAssistance {
	private String ageWhenLeft;
	private boolean applyingForOther;
	private boolean beenInFosterCare;
	private String billMonths;
	private String childCare;
	private boolean hasEligibleImmigration;
	private boolean hasPastMedicalBills;
	private boolean hasPublicEmployeeCoverage;
	private boolean hasSSI;
	private String immigrationIdNumber;
	private String immigrationType;
	private boolean isDisabledBlind;
	private boolean isNative;
	private boolean isPrimaryCareTaker;
	private boolean isStudent;
	private boolean isUSCitizen = true;
	private boolean isVeteran;
	private boolean livedSince1996;
	private boolean needsDailyAssistance;
	private boolean receivedHealthcare;
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
	public boolean getApplyingForOther() {
		return applyingForOther;
	}

	public void setApplyingForOther(boolean applyingForOther) {
		this.applyingForOther = applyingForOther;
	}

	@XmlElement
	public boolean getBeenInFosterCare() {
		return beenInFosterCare;
	}

	public void setBeenInFosterCare(boolean beenInFosterCare) {
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
	public boolean getHasEligibleImmigration() {
		return hasEligibleImmigration;
	}

	public void setHasEligibleImmigration(boolean hasEligibleImmigration) {
		this.hasEligibleImmigration = hasEligibleImmigration;
	}

	@XmlElement
	public boolean getHasPastMedicalBills() {
		return hasPastMedicalBills;
	}

	public void setHasPastMedicalBills(boolean hasPastMedicalBills) {
		this.hasPastMedicalBills = hasPastMedicalBills;
	}

	@XmlElement
	public boolean getHasPublicEmployeeCoverage() {
		return hasPublicEmployeeCoverage;
	}

	public void setHasPublicEmployeeCoverage(boolean hasPublicEmployeeCoverage) {
		this.hasPublicEmployeeCoverage = hasPublicEmployeeCoverage;
	}

	@XmlElement
	public boolean getHasSSI() {
		return hasSSI;
	}

	public void setHasSSI(boolean hasSSI) {
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
	public boolean getIsDisabledBlind() {
		return isDisabledBlind;
	}

	public void setIsDisabledBlind(boolean isDisabledBlind) {
		this.isDisabledBlind = isDisabledBlind;
	}

	@XmlElement
	public boolean getIsNative() {
		return isNative;
	}

	public void setIsNative(boolean isNative) {
		this.isNative = isNative;
	}

	@XmlElement
	public boolean getIsPrimaryCareTaker() {
		return isPrimaryCareTaker;
	}

	public void setIsPrimaryCareTaker(boolean isPrimaryCareTaker) {
		this.isPrimaryCareTaker = isPrimaryCareTaker;
	}

	@XmlElement
	public boolean getIsStudent() {
		return isStudent;
	}

	public void setIsStudent(boolean isStudent) {
		this.isStudent = isStudent;
	}

	@XmlElement
	public boolean getIsUSCitizen() {
		return isUSCitizen;
	}

	public void setIsUSCitizen(boolean isUSCitizen) {
		this.isUSCitizen = isUSCitizen;
	}

	@XmlElement
	public boolean getIsVeteran() {
		return isVeteran;
	}

	public void setIsVeteran(boolean isVeteran) {
		this.isVeteran = isVeteran;
	}

	@XmlElement
	public boolean getLivedSince1996() {
		return livedSince1996;
	}

	public void setLivedSince1996(boolean livedSince1996) {
		this.livedSince1996 = livedSince1996;
	}

	@XmlElement
	public boolean getNeedsDailyAssistance() {
		return needsDailyAssistance;
	}

	public void setNeedsDailyAssistance(boolean needsDailyAssistance) {
		this.needsDailyAssistance = needsDailyAssistance;
	}

	@XmlElement
	public boolean getReceivedHealthcare() {
		return receivedHealthcare;
	}

	public void setReceivedHealthcare(boolean receivedHealthcare) {
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

	public OtherAssistance() { }
}
