package gov.nv.dwss.medicaid.application.web.model;

public class ChildCare {
	
	private String childName;

	public String getChildName() {
		return childName;
	}

	public void setChildName(String childName) {
		this.childName = childName;
	}
	
	public ChildCare() {}
	
	public ChildCare(String childName) {
		this.childName = childName;
	}
	
}
