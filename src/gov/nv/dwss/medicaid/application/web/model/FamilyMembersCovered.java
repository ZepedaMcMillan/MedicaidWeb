package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "familyMembersCovered")
public class FamilyMembersCovered {
	private String familyMember;

	@XmlElement
	public String getFamilyMember() {
		return familyMember;
	}
	
	public void setFamilyMember(String familyMember) {
		this.familyMember = familyMember;
	}

	public FamilyMembersCovered() {
	}

	public FamilyMembersCovered(String familyMember) {
		this.familyMember = familyMember;
	}
}
