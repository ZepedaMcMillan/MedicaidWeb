package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class PeopleCoveredJSON {
	private String coverageDropDate;
	private String firstName;
	private String middleName;
	private String lastName;
	private String eligibilityStartDate;
	private String enrollmentStatus;
	private String enrollmentStartDate;
	private String futureChanges;

	@XmlElement
	public String getCoverageDropDate() {
		return coverageDropDate;
	}

	public void setCoverageDropDate(String coverageDropDate) {
		this.coverageDropDate = coverageDropDate;
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
	public String getEligibilityStartDate() {
		return eligibilityStartDate;
	}

	public void setEligibilityStartDate(String eligibilityStartDate) {
		this.eligibilityStartDate = eligibilityStartDate;
	}

	@XmlElement
	public String getEnrollmentStatus() {
		return enrollmentStatus;
	}

	public void setEnrollmentStatus(String enrollmentStatus) {
		this.enrollmentStatus = enrollmentStatus;
	}

	@XmlElement
	public String getEnrollmentStartDate() {
		return enrollmentStartDate;
	}

	public void setEnrollmentStartDate(String enrollmentStartDate) {
		this.enrollmentStartDate = enrollmentStartDate;
	}

	@XmlElement
	public String getFutureChanges() {
		return futureChanges;
	}

	public void setFutureChanges(String futureChanges) {
		this.futureChanges = futureChanges;
	}

	public PeopleCoveredJSON() {
	}

}
