package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="authorizedRep")
public class AuthorizedRep {
	private String doYouAgree;
	private Address repAddress;
	private String repName;
	private String repPhone;
	
	@XmlElement
	public String getDoYouAgree() {
		return doYouAgree;
	}
	public void setDoYouAgree(String doYouAgree) {
		this.doYouAgree = doYouAgree;
	}
	
	@XmlElement
	public Address getRepAddress() {
		return repAddress;
	}
	public void setRepAddress(Address repAddress) {
		this.repAddress = repAddress;
	}
	
	@XmlElement
	public String getRepName() {
		return repName;
	}
	public void setRepName(String repName) {
		this.repName = repName;
	}
	
	@XmlElement
	public String getRepPhone() {
		return repPhone;
	}
	public void setRepPhone(String repPhone) {
		this.repPhone = repPhone;
	}
	
	public AuthorizedRep() {}
	
	public AuthorizedRep(String doYouAgree, Address repAddress, String repName, String repPhone) {
		this.doYouAgree = doYouAgree;
		this.repAddress = repAddress;
		this.repName = repName;
		this.repPhone = repPhone;
	}
}
