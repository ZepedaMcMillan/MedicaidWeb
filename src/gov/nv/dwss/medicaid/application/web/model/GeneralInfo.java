package gov.nv.dwss.medicaid.application.web.model;

import java.util.Date;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "generalInfo")
public class GeneralInfo {
	private Date birthDate;
	private int age;
	private String firstName;
	private String middleName;
	private String lastName;
	private String suffix;
	private String relationship;
	private String gender;
	private String maritalStatus;
	private boolean livesWithSpouse;
	private boolean isPregnant;
	private int numberOfBabies;
	private Date pregnancyDueDate;
	private String ssn;

	@XmlElement
	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
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
	public String getRelationship() {
		return relationship;
	}

	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}

	@XmlElement
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@XmlElement
	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	@XmlElement
	public boolean getLivesWithSpouse() {
		return livesWithSpouse;
	}

	public void setLivesWithSpouse(Boolean livesWithSpouse) {
		this.livesWithSpouse = livesWithSpouse;
	}

	@XmlElement
	public boolean getIsPregnant() {
		return isPregnant;
	}

	public void setIsPregnant(boolean isPregnant) {
		this.isPregnant = isPregnant;
	}

	@XmlElement
	public int getNumberOfBabies() {
		return numberOfBabies;
	}

	public void setNumberOfBabies(int numberOfBabies) {
		this.numberOfBabies = numberOfBabies;
	}

	@XmlElement
	public Date getPregnancyDueDate() {
		return pregnancyDueDate;
	}

	public void setPregnancyDueDate(Date pregnancyDueDate) {
		this.pregnancyDueDate = pregnancyDueDate;
	}

	@XmlElement
	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	@XmlElement
	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public GeneralInfo() {
	}

	public GeneralInfo(Date birthDate, String firstName, String middleName,
			String lastName, String suffix, String relationship, String gender,
			String maritalStatus, boolean livesWithSpouse, boolean isPregnant,
			int numberOfBabies, Date pregnancyDueDate, String ssn) {
		this.birthDate = birthDate;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.suffix = suffix;
		this.relationship = relationship;
		this.gender = gender;
		this.maritalStatus = maritalStatus;
		this.livesWithSpouse = livesWithSpouse;
		this.isPregnant = isPregnant;
		this.numberOfBabies = numberOfBabies;
		this.pregnancyDueDate = pregnancyDueDate;
		this.ssn = ssn;
	}
}
