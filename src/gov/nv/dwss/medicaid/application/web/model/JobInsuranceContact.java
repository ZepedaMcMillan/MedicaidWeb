package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "jobInsuranceContact")
public class JobInsuranceContact {
	private String email;
	private String name;
	private String phone;

	@XmlElement
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@XmlElement
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@XmlElement
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public JobInsuranceContact() {
	}

	public JobInsuranceContact(String email, String name, String phone) {
		this.email = email;
		this.name = name;
		this.phone = phone;
	}
}
