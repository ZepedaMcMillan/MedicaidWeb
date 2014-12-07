package gov.nv.dwss.medicaid.application.web.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

import gov.nv.dwss.medicaid.application.web.model.HouseHoldInfo;
import gov.nv.dwss.medicaid.application.web.model.ContactInfo;
import gov.nv.dwss.medicaid.application.web.model.MemberInfo;

@Component
@Scope(value="session", proxyMode=ScopedProxyMode.TARGET_CLASS)
public class HouseHoldInformationBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private HouseHoldInfo houseHoldInfo;
	
	public HouseHoldInformationBean () {
		houseHoldInfo = new HouseHoldInfo();
		houseHoldInfo.setContactInfo(new ContactInfo());
		List<MemberInfo> memberInfo = new ArrayList<MemberInfo>();
		memberInfo.add(new MemberInfo());
		houseHoldInfo.setMemberInfo(memberInfo);
	}
	
	public void updateHouseholdInfo(HouseHoldInfo houseHoldInfo) {
		this.houseHoldInfo = houseHoldInfo;
	}
	
	public HouseHoldInfo getHouseholdInfo() {
		return this.houseHoldInfo;
	}
}
