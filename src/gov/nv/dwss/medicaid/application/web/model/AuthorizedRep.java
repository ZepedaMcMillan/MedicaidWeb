package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="authorizedRep")
public class AuthorizedRep {
	private boolean doYouAgree;
	private Address repAddress;
	private String repName;
	private String repPhone;
	
	@XmlElement
	public boolean getDoYouAgree() {
		return doYouAgree;
	}
	public void setDoYouAgree(boolean doYouAgree) {
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
	
	public AuthorizedRep(boolean doYouAgree, Address repAddress, String repName, String repPhone) {
		this.doYouAgree = doYouAgree;
		this.repAddress = repAddress;
		this.repName = repName;
		this.repPhone = repPhone;
	}
}
