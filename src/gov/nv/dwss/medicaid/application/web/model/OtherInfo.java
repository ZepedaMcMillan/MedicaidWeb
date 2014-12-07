package gov.nv.dwss.medicaid.application.web.model;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name= "otherInfo")
public class OtherInfo {
	private String agreeCSECoop;
	private String agreeInfoRelease;
	private String agreeMedEstate;
	private String agreePrivacy;
	private String agreeReadSign;
	private String agreeResp;
	private String agreeReviews;
	private String agreeRights;
	private String agreeThirdParty;
	private String verballySigning;
	private String understand;
	private String swear;
	private String applicantIncarcerated;
	private List<AuthorizedRep> authorizedRep;
	private CoverageRenewalAPTC coverageRenewalAPTC;
	private List<Incarceration> incarcerationList;
	private String isAuthorizedRepNeeded;
	private String otherReferral;
	private String parentLivesOutside;
	private String referralInfo;
	private String registeredToVote;
	private String selectedHealthPlan;
	
	@XmlElement
	public String getAgreeCSECoop() {
		return agreeCSECoop;
	}
	public void setAgreeCSECoop(String agreeCSECoop) {
		this.agreeCSECoop = agreeCSECoop;
	}
	
	@XmlElement
	public String getAgreeInfoRelease() {
		return agreeInfoRelease;
	}
	public void setAgreeInfoRelease(String agreeInfoRelease) {
		this.agreeInfoRelease = agreeInfoRelease;
	}
	
	@XmlElement
	public String getAgreeMedEstate() {
		return agreeMedEstate;
	}
	public void setAgreeMedEstate(String agreeMedEstate) {
		this.agreeMedEstate = agreeMedEstate;
	}
	
	@XmlElement
	public String getAgreePrivacy() {
		return agreePrivacy;
	}
	public void setAgreePrivacy(String agreePrivacy) {
		this.agreePrivacy = agreePrivacy;
	}
	
	@XmlElement
	public String getAgreeReadSign() {
		return agreeReadSign;
	}
	public void setAgreeReadSign(String agreeReadSign) {
		this.agreeReadSign = agreeReadSign;
	}
	
	@XmlElement
	public String getAgreeResp() {
		return agreeResp;
	}
	public void setAgreeResp(String agreeResp) {
		this.agreeResp = agreeResp;
	}
	
	@XmlElement
	public String getAgreeReviews() {
		return agreeReviews;
	}
	public void setAgreeReviews(String agreeReviews) {
		this.agreeReviews = agreeReviews;
	}
	
	@XmlElement
	public String getAgreeRights() {
		return agreeRights;
	}
	public void setAgreeRights(String agreeRights) {
		this.agreeRights = agreeRights;
	}
	
	@XmlElement
	public String getAgreeThirdParty() {
		return agreeThirdParty;
	}
	public void setAgreeThirdParty(String agreeThirdParty) {
		this.agreeThirdParty = agreeThirdParty;
	}
	
	@XmlElement
	public String getApplicantIncarcerated() {
		return applicantIncarcerated;
	}
	public void setApplicantIncarcerated(String applicantIncarcerated) {
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
	public String getIsAuthorizedRepNeeded() {
		return isAuthorizedRepNeeded;
	}
	public void setIsAuthorizedRepNeeded(String isAuthorizedRepNeeded) {
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
	public String getParentLivesOutside() {
		return parentLivesOutside;
	}
	public void setParentLivesOutside(String parentLivesOutside) {
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
	public String getRegisteredToVote() {
		return registeredToVote;
	}
	public void setRegisteredToVote(String registeredToVote) {
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
	public String getVerballySigning() {
		return verballySigning;
	}
	public void setVerballySigning(String verballySigning) {
		this.verballySigning = verballySigning;
	}
	
	@XmlElement
	public String getUnderstand() {
		return understand;
	}
	public void setUnderstand(String understand) {
		this.understand = understand;
	}
	
	@XmlElement
	public String getSwear() {
		return swear;
	}
	public void setSwear(String swear) {
		this.swear = swear;
	}
	
	public OtherInfo() {};
	
	public OtherInfo(String agreeCSECoop, String agreeInfoRelease,
			String agreeMedEstate, String agreePrivacy, String agreeReadSign,
			String agreeResp, String agreeReviews, String agreeRights,
			String agreeThirdParty, String applicantIncarcerated,
			List<AuthorizedRep> authorizedRep,
			CoverageRenewalAPTC coverageRenewalAPTC,
			List<Incarceration> incarcerationList, String isAuthorizedRepNeeded,
			String otherReferral, String parentLivesOutside,
			String referralInfo, String registeredToVote,
			String selectedHealthPlan) {
		this.agreeCSECoop = agreeCSECoop;
		this.agreeInfoRelease = agreeInfoRelease;
		this.agreeMedEstate = agreeMedEstate;
		this.agreePrivacy = agreePrivacy;
		this.agreeReadSign = agreeReadSign;
		this.agreeResp = agreeResp;
		this.agreeReviews = agreeReviews;
		this.agreeRights = agreeRights;
		this.agreeThirdParty = agreeThirdParty;
		this.applicantIncarcerated = applicantIncarcerated;
		this.authorizedRep = authorizedRep;
		this.coverageRenewalAPTC = coverageRenewalAPTC;
		this.incarcerationList = incarcerationList;
		this.isAuthorizedRepNeeded = isAuthorizedRepNeeded;
		this.otherReferral = otherReferral;
		this.parentLivesOutside = parentLivesOutside;
		this.referralInfo = referralInfo;
		this.registeredToVote = registeredToVote;
		this.selectedHealthPlan = selectedHealthPlan;
	}
}
