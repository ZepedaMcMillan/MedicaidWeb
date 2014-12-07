package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="coverageRenewal")
public class CoverageRenewalAPTC {

	private String allowReturnAccess;
	private String numberOfYears;

	@XmlElement
	public String getAllowReturnAccess() {
		return allowReturnAccess;
	}

	public void setAllowReturnAccess(String allowReturnAccess) {
		this.allowReturnAccess = allowReturnAccess;
	}

	@XmlElement
	public String getNumberOfYears() {
		return numberOfYears;
	}

	public void setNumberOfYears(String numberOfYears) {
		this.numberOfYears = numberOfYears;
	}

	public CoverageRenewalAPTC() {
	}

	public CoverageRenewalAPTC(String allowReturnAccess, String numberOfYears) {
		this.allowReturnAccess = allowReturnAccess;
		this.numberOfYears = numberOfYears;
	}
}
