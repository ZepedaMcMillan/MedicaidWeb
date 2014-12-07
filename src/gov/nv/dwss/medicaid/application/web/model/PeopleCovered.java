package gov.nv.dwss.medicaid.application.web.model;

import java.util.Date;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "personCovered")
public class PeopleCovered {
	private Date coverageDropDate;
	private String firstName;
	private String middleName;
	private String lastName;
	private Date eligibilityStartDate;
	private String enrollmentStatus;
	private Date enrollmentStartDate;
	private String futureChanges;

	@XmlElement
	public Date getCoverageDropDate() {
		return coverageDropDate;
	}

	public void setCoverageDropDate(Date coverageDropDate) {
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
	public Date getEligibilityStartDate() {
		return eligibilityStartDate;
	}

	public void setEligibilityStartDate(Date eligibilityStartDate) {
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
	public Date getEnrollmentStartDate() {
		return enrollmentStartDate;
	}

	public void setEnrollmentStartDate(Date enrollmentStartDate) {
		this.enrollmentStartDate = enrollmentStartDate;
	}

	@XmlElement
	public String getFutureChanges() {
		return futureChanges;
	}

	public void setFutureChanges(String futureChanges) {
		this.futureChanges = futureChanges;
	}

	public PeopleCovered() {
	}

	public PeopleCovered(Date coverageDropDate, String firstName,
			String middleName, String lastName, Date eligibilityStartDate,
			String enrollmentStatus, Date enrollmentStartDate,
			String futureChanges) {
		this.coverageDropDate = coverageDropDate;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.eligibilityStartDate = eligibilityStartDate;
		this.enrollmentStatus = enrollmentStatus;
		this.enrollmentStartDate = enrollmentStartDate;
		this.futureChanges = futureChanges;
	}
}
