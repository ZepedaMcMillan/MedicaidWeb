package gov.nv.dwss.medicaid.application.web.model;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "otherInsurance")
public class OtherInsurance {
	private boolean hasOtherInsurance;
	private List<OtherInsuranceItem> otherInsuranceDetails;

	@XmlElement
	public boolean getHasOtherInsurance() {
		return hasOtherInsurance;
	}

	public void setHasOtherInsurance(boolean hasOtherInsurance) {
		this.hasOtherInsurance = hasOtherInsurance;
	}
	
	@XmlElementWrapper(name="otherInsuranceDetails")
	@XmlElement(name = "otherInsuranceItem")
	public List<OtherInsuranceItem> getOtherInsuranceDetails() {
		return otherInsuranceDetails;
	}

	public void setOtherInsuranceDetails(
			List<OtherInsuranceItem> otherInsuranceDetails) {
		this.otherInsuranceDetails = otherInsuranceDetails;
	}

	public OtherInsurance() { }
}
