package gov.nv.dwss.medicaid.application.web.model;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name= "otherInfo")
public class OtherInfo {
	private boolean agreeCSECoop;
	private boolean agreeInfoRelease;
	private boolean agreeMedEstate;
	private boolean agreePrivacy;
	private boolean agreeReadSign;
	private boolean agreeResp;
	private boolean agreeReviews;
	private boolean agreeRights;
	private boolean agreeThirdParty;
	private boolean verballySigning;
	private boolean understand;
	private boolean swear;
	private boolean applicantIncarcerated;
	private List<AuthorizedRep> authorizedRep;
	private CoverageRenewalAPTC coverageRenewalAPTC;
	private List<Incarceration> incarcerationList;
	private boolean isAuthorizedRepNeeded;
	private String otherReferral;
	private boolean parentLivesOutside;
	private String referralInfo;
	private boolean registeredToVote;
	private String selectedHealthPlan;
	
	@XmlElement
	public boolean getAgreeCSECoop() {
		return agreeCSECoop;
	}
	public void setAgreeCSECoop(boolean agreeCSECoop) {
		this.agreeCSECoop = agreeCSECoop;
	}
	
	@XmlElement
	public boolean getAgreeInfoRelease() {
		return agreeInfoRelease;
	}
	public void setAgreeInfoRelease(boolean agreeInfoRelease) {
		this.agreeInfoRelease = agreeInfoRelease;
	}
	
	@XmlElement
	public boolean getAgreeMedEstate() {
		return agreeMedEstate;
	}
	public void setAgreeMedEstate(boolean agreeMedEstate) {
		this.agreeMedEstate = agreeMedEstate;
	}
	
	@XmlElement
	public boolean getAgreePrivacy() {
		return agreePrivacy;
	}
	public void setAgreePrivacy(boolean agreePrivacy) {
		this.agreePrivacy = agreePrivacy;
	}
	
	@XmlElement
	public boolean getAgreeReadSign() {
		return agreeReadSign;
	}
	public void setAgreeReadSign(boolean agreeReadSign) {
		this.agreeReadSign = agreeReadSign;
	}
	
	@XmlElement
	public boolean getAgreeResp() {
		return agreeResp;
	}
	public void setAgreeResp(boolean agreeResp) {
		this.agreeResp = agreeResp;
	}
	
	@XmlElement
	public boolean getAgreeReviews() {
		return agreeReviews;
	}
	public void setAgreeReviews(boolean agreeReviews) {
		this.agreeReviews = agreeReviews;
	}
	
	@XmlElement
	public boolean getAgreeRights() {
		return agreeRights;
	}
	public void setAgreeRights(boolean agreeRights) {
		this.agreeRights = agreeRights;
	}
	
	@XmlElement
	public boolean getAgreeThirdParty() {
		return agreeThirdParty;
	}
	public void setAgreeThirdParty(boolean agreeThirdParty) {
		this.agreeThirdParty = agreeThirdParty;
	}
	
	@XmlElement
	public boolean getApplicantIncarcerated() {
		return applicantIncarcerated;
	}
	public void setApplicantIncarcerated(boolean applicantIncarcerated) {
		this.applicantIncarcerated = applicantIncarcerated;
	}
	
	@XmlElementWrapper(name="authorizedReps")
	@XmlElement(name="authorizedRep")
	public List<AuthorizedRep> getAuthorizedRep() {
		return authorizedRep;
	}
	public void setAuthorizedRep(List<AuthorizedRep> authorizedRep) {
		this.authorizedRep = authorizedRep;
	}
	
	@XmlElement
	public CoverageRenewalAPTC getCoverageRenewalAPTC() {
		return coverageRenewalAPTC;
	}
	public void setCoverageRenewalAPTC(CoverageRenewalAPTC coverageRenewalAPTC) {
		this.coverageRenewalAPTC = coverageRenewalAPTC;
	}
	
	@XmlElementWrapper(name="incarcerations")
	@XmlElement(name="incarceration")
	public List<Incarceration> getIncarcerationList() {
		return incarcerationList;
	}
	public void setIncarcerationList(List<Incarceration> incarceration) {
		this.incarcerationList = incarceration;
	}
	
	@XmlElement
	public boolean getIsAuthorizedRepNeeded() {
		return isAuthorizedRepNeeded;
	}
	public void setIsAuthorizedRepNeeded(boolean isAuthorizedRepNeeded) {
		this.isAuthorizedRepNeeded = isAuthorizedRepNeeded;
	}
	
	@XmlElement
	public String getOtherReferral() {
		return otherReferral;
	}
	public void setOtherReferral(String otherReferral) {
		this.otherReferral = otherReferral;
	}
	
	@XmlElement
	public boolean getParentLivesOutside() {
		return parentLivesOutside;
	}
	public void setParentLivesOutside(boolean parentLivesOutside) {
		this.parentLivesOutside = parentLivesOutside;
	}
	
	@XmlElement
	public String getReferralInfo() {
		return referralInfo;
	}
	public void setReferralInfo(String referralInfo) {
		this.referralInfo = referralInfo;
	}
	
	@XmlElement
	public boolean getRegisteredToVote() {
		return registeredToVote;
	}
	public void setRegisteredToVote(boolean registeredToVote) {
		this.registeredToVote = registeredToVote;
	}
	
	@XmlElement
	public String getSelectedHealthPlan() {
		return selectedHealthPlan;
	}
	public void setSelectedHealthPlan(String selectedHealthPlan) {
		this.selectedHealthPlan = selectedHealthPlan;
	}
	
	@XmlElement
	public boolean getVerballySigning() {
		return verballySigning;
	}
	public void setVerballySigning(boolean verballySigning) {
		this.verballySigning = verballySigning;
	}
	
	@XmlElement
	public boolean getUnderstand() {
		return understand;
	}
	public void setUnderstand(boolean understand) {
		this.understand = understand;
	}
	
	@XmlElement
	public boolean getSwear() {
		return swear;
	}
	public void setSwear(boolean swear) {
		this.swear = swear;
	}
	
	public OtherInfo() { }
}
