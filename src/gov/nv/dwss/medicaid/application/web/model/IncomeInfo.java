package gov.nv.dwss.medicaid.application.web.model;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "incomeInfo")
public class IncomeInfo {
	private String[] pastThreeMonths;
	private String isEmployed;
	private List<IncomeInfoItem> incomeInfoList;

	@XmlElement(name = "pastThreeMonths")
	@XmlElementWrapper(name = "pastThreeMonthsValues")
	public String[] getPastThreeMonths() {
		return pastThreeMonths;
	}

	public void setPastThreeMonths(String[] pastThreeMonths) {
		this.pastThreeMonths = pastThreeMonths;
	}

	@XmlElement
	public String getIsEmployed() {
		return isEmployed;
	}

	public void setIsEmployed(String isEmployed) {
		this.isEmployed = isEmployed;
	}

	@XmlElementWrapper(name = "incomeItems")
	@XmlElement(name = "incomeItem")
	public List<IncomeInfoItem> getIncomeInfoList() {
		return incomeInfoList;
	}

	public void setIncomeInfoList(List<IncomeInfoItem> incomeInfoList) {
		this.incomeInfoList = incomeInfoList;
	}

	public IncomeInfo() {
	}
}
