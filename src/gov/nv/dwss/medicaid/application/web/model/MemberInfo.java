package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "memberInfo")
public class MemberInfo {
	private Deductions deductions;
	private GeneralInfo generalInfo;
	private IncomeInfo incomeInfo;
	private String isCaseHOH;
	private OtherAssistance otherAssistance;
	private OtherIncome otherIncome;
	private RaceEthnicity raceEthnicity;
	private TaxInfo taxInfo;
	private YearlyIncome yearlyIncome;

	@XmlElement
	public Deductions getDeductions() {
		return deductions;
	}

	public void setDeductions(Deductions deductions) {
		this.deductions = deductions;
	}

	@XmlElement
	public GeneralInfo getGeneralInfo() {
		return generalInfo;
	}

	public void setGeneralInfo(GeneralInfo generalInfo) {
		this.generalInfo = generalInfo;
	}

	@XmlElement
	public IncomeInfo getIncomeInfo() {
		return incomeInfo;
	}

	public void setIncomeInfo(IncomeInfo incomeInfo) {
		this.incomeInfo = incomeInfo;
	}

	@XmlElement
	public String getIsCaseHOH() {
		return isCaseHOH;
	}

	public void setIsCaseHOH(String isCaseHOH) {
		this.isCaseHOH = isCaseHOH;
	}

	@XmlElement
	public OtherAssistance getOtherAssistance() {
		return otherAssistance;
	}

	public void setOtherAssistance(OtherAssistance otherAssistance) {
		this.otherAssistance = otherAssistance;
	}

	@XmlElement
	public OtherIncome getOtherIncome() {
		return otherIncome;
	}

	public void setOtherIncome(OtherIncome otherIncome) {
		this.otherIncome = otherIncome;
	}

	@XmlElement
	public RaceEthnicity getRaceEthnicity() {
		return raceEthnicity;
	}

	public void setRaceEthnicity(RaceEthnicity raceEthnicity) {
		this.raceEthnicity = raceEthnicity;
	}

	@XmlElement
	public TaxInfo getTaxInfo() {
		return taxInfo;
	}

	public void setTaxInfo(TaxInfo taxInfo) {
		this.taxInfo = taxInfo;
	}

	@XmlElement
	public YearlyIncome getYearlyIncome() {
		return yearlyIncome;
	}

	public void setYearlyIncome(YearlyIncome yearlyIncome) {
		this.yearlyIncome = yearlyIncome;
	}

	public MemberInfo() {
	}

	public MemberInfo(Deductions deductions, GeneralInfo generalInfo,
			IncomeInfo incomeInfo, String isCaseHOH,
			OtherAssistance otherAssistance, OtherIncome otherIncome,
			RaceEthnicity raceEthnicity, TaxInfo taxInfo,
			YearlyIncome yearlyIncome) {
		this.deductions = deductions;
		this.generalInfo = generalInfo;
		this.incomeInfo = incomeInfo;
		this.isCaseHOH = isCaseHOH;
		this.otherAssistance = otherAssistance;
		this.otherIncome = otherIncome;
		this.raceEthnicity = raceEthnicity;
		this.taxInfo = taxInfo;
		this.yearlyIncome = yearlyIncome;
	}
}
