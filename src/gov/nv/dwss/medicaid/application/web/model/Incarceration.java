package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "incarceration")
public class Incarceration {
	private boolean dispositionPending;
	private String personName;

	@XmlElement
	public boolean getDispositionPending() {
		return dispositionPending;
	}

	public void setDispositionPending(boolean dispositionPending) {
		this.dispositionPending = dispositionPending;
	}

	@XmlElement
	public String getPersonName() {
		return personName;
	}

	public void setPersonName(String personName) {
		this.personName = personName;
	}

	public Incarceration() {
	}

	public Incarceration(boolean dispositionPending, String personName) {
		this.setDispositionPending(dispositionPending);
		this.personName = personName;
	}
}
