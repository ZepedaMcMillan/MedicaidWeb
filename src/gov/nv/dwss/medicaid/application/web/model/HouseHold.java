package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class HouseHold {
	
	private HealthInsuranceInfo healthInsuranceInfo;
	private HouseHoldInfo houseHoldInfo;
	private OtherInfo otherInfo;
	@XmlElement
	public HealthInsuranceInfo getHealthInsuranceInfo() {
		return healthInsuranceInfo;
	}
	public void setHealthInsuranceInfo(HealthInsuranceInfo healthInsuranceInfo) {
		this.healthInsuranceInfo = healthInsuranceInfo;
	}
	@XmlElement
	public HouseHoldInfo getHouseHoldInfo() {
		return houseHoldInfo;
	}
	public void setHouseHoldInfo(HouseHoldInfo houseHoldInfo) {
		this.houseHoldInfo = houseHoldInfo;
	}
	@XmlElement
	public OtherInfo getOtherInfo() {
		return otherInfo;
	}
	public void setOtherInfo(OtherInfo otherInfo) {
		this.otherInfo = otherInfo;
	}	
	public HouseHold() {}
}
