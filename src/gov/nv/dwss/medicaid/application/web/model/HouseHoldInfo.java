package gov.nv.dwss.medicaid.application.web.model;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "houseHoldInfo")
public class HouseHoldInfo {

	private ContactInfo contactInfo;
	private List<MemberInfo> memberInfo;
	private boolean houseHoldMembers;

	@XmlElement
	public boolean getHouseHoldMembers() {
		return houseHoldMembers;
	}

	public void setHouseHoldMembers(boolean houseHoldMembers) {
		this.houseHoldMembers = houseHoldMembers;
	}

	@XmlElement
	public ContactInfo getContactInfo() {
		return contactInfo;
	}

	public void setContactInfo(ContactInfo contactInfo) {
		this.contactInfo = contactInfo;
	}

	@XmlElementWrapper(name="members")
	@XmlElement(name = "member")
	public List<MemberInfo> getMemberInfo() {
		return memberInfo;
	}

	public void setMemberInfo(List<MemberInfo> memberInfo) {
		this.memberInfo = memberInfo;
	}

	public HouseHoldInfo() { }
}
