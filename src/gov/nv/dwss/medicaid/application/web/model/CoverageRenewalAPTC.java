package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="coverageRenewal")
public class CoverageRenewalAPTC {

	private boolean allowReturnAccess;
	private int numberOfYears;

	@XmlElement
	public boolean getAllowReturnAccess() {
		return allowReturnAccess;
	}

	public void setAllowReturnAccess(boolean allowReturnAccess) {
		this.allowReturnAccess = allowReturnAccess;
	}

	@XmlElement
	public int getNumberOfYears() {
		return numberOfYears;
	}

	public void setNumberOfYears(int numberOfYears) {
		this.numberOfYears = numberOfYears;
	}

	public CoverageRenewalAPTC() { }
}
