package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="claimedOnOther")
public class ClaimedOnOther {
	private String otherFilerName;
	private String relationToFiler;
	
	@XmlElement
	public String getOtherFilerName() {
		return otherFilerName;
	}
	public void setOtherFilerName(String otherFilerName) {
		this.otherFilerName = otherFilerName;
	}
	
	@XmlElement
	public String getRelationToFiler() {
		return relationToFiler;
	}
	public void setRelationToFiler(String relationToFiler) {
		this.relationToFiler = relationToFiler;
	}
	
	public ClaimedOnOther() {}
	
	public ClaimedOnOther(String otherFilerName, String relationToFiler) {
		this.otherFilerName = otherFilerName;
		this.relationToFiler = relationToFiler;
	}
}
