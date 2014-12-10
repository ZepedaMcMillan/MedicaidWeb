package gov.nv.dwss.medicaid.application.web.model;

import java.util.Date;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "contactInfo")
public class ContactInfo {
	private String firstName;
	private String middleName;
	private String lastName;
	private String suffix;
	private Date birthDate;
	private String gender;
	private Address householdAddress;
	private String primaryPhone;
	private String primaryExtension;
	private String secondaryPhone;
	private String secondaryExtension;
	private Address mailingAddress;
	private boolean isEmailNeeded;
	private String emailAddress;
	private boolean isEnglishPreferred = true;
	private String spanishOrOther;
	private String otherLanguage;
	private boolean isInterpreterNeeded;
	private boolean isMailingAddress;

	@XmlElement
	public boolean getIsMailingAddress() {
		return isMailingAddress;
	}

	public void setIsMailingAddress(boolean isMailingAddress) {
		this.isMailingAddress = isMailingAddress;
	}

	@XmlElement
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@XmlElement
	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	@XmlElement
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@XmlElement
	public String getSuffix() {
		return suffix;
	}

	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}

	@XmlElement
	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	@XmlElement
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@XmlElement
	public Address getHouseholdAddress() {
		return householdAddress;
	}

	public void setHouseholdAddress(Address householdAddress) {
		this.householdAddress = householdAddress;
	}

	@XmlElement
	public String getPrimaryPhone() {
		return primaryPhone;
	}

	public void setPrimaryPhone(String primaryPhone) {
		this.primaryPhone = primaryPhone;
	}

	@XmlElement
	public String getPrimaryExtension() {
		return primaryExtension;
	}

	public void setPrimaryExtension(String primaryExtension) {
		this.primaryExtension = primaryExtension;
	}

	@XmlElement
	public String getSecondaryPhone() {
		return secondaryPhone;
	}

	public void setSecondaryPhone(String secondaryPhone) {
		this.secondaryPhone = secondaryPhone;
	}

	@XmlElement
	public String getSecondaryExtension() {
		return secondaryExtension;
	}

	public void setSecondaryExtension(String secondaryExtension) {
		this.secondaryExtension = secondaryExtension;
	}

	@XmlElement
	public Address getMailingAddress() {
		return mailingAddress;
	}

	public void setMailingAddress(Address mailingAddress) {
		this.mailingAddress = mailingAddress;
	}

	@XmlElement
	public boolean getIsEmailNeeded() {
		return isEmailNeeded;
	}

	public void setIsEmailNeeded(boolean isEmailNeeded) {
		this.isEmailNeeded = isEmailNeeded;
	}

	@XmlElement
	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	@XmlElement
	public boolean getIsEnglishPreferred() {
		return isEnglishPreferred;
	}

	public void setIsEnglishPreferred(boolean isEnglishPreferred) {
		this.isEnglishPreferred = isEnglishPreferred;
	}

	@XmlElement
	public String getSpanishOrOther() {
		return spanishOrOther;
	}

	public void setSpanishOrOther(String spanishOrOther) {
		this.spanishOrOther = spanishOrOther;
	}

	@XmlElement
	public String getOtherLanguage() {
		return otherLanguage;
	}

	public void setOtherLanguage(String otherLanguage) {
		this.otherLanguage = otherLanguage;
	}

	@XmlElement
	public boolean getIsInterpreterNeeded() {
		return isInterpreterNeeded;
	}

	public void setIsInterpreterNeeded(boolean isInterpreterNeeded) {
		this.isInterpreterNeeded = isInterpreterNeeded;
	}

	public ContactInfo() {
	}

	public ContactInfo(String firstName, String middleName, String lastName,
			String suffix, Date birthDate, String gender,
			Address householdAddress, String primaryPhone,
			String primaryExtension, String secondaryPhone,
			String secondaryExtension, Address mailingAddress,
			boolean isEmailNeeded, String emailAddress,
			boolean isEnglishPreferred, String spanishOrOther,
			String otherLanguage, boolean isInterpreterNeeded,
			boolean isMailingAddress) {
		// TODO Auto-generated method stub

		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.suffix = suffix;
		this.birthDate = birthDate;
		this.gender = gender;
		this.householdAddress = householdAddress;
		this.primaryPhone = primaryPhone;
		this.primaryExtension = primaryExtension;
		this.secondaryPhone = secondaryPhone;
		this.secondaryExtension = secondaryExtension;
		this.mailingAddress = mailingAddress;
		this.isEmailNeeded = isEmailNeeded;
		this.emailAddress = emailAddress;
		this.isEnglishPreferred = isEnglishPreferred;
		this.spanishOrOther = spanishOrOther;
		this.otherLanguage = otherLanguage;
		this.isInterpreterNeeded = isInterpreterNeeded;
		this.isMailingAddress = isMailingAddress;

	}
}
