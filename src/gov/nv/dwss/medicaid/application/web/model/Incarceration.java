package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "incarceration")
public class Incarceration {
	private String dispositionPending;
	private String personName;

	@XmlElement
	public String getDispositionPending() {
		return dispositionPending;
	}

	public void setDispositionPending(String dispositionPending) {
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

	public Incarceration(String dispositionPending, String personName) {
		this.setDispositionPending(dispositionPending);
		this.personName = personName;
	}
}
