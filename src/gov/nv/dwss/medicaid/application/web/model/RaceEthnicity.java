package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "raceEthnicity")
public class RaceEthnicity {
	private String[] hispanicCategory;
	private boolean isHispanicLatino;
	private String[] race;
	private String hispanicCategoryOther;
	private String raceOther;

	@XmlElement(name = "hispanicCategory")
	@XmlElementWrapper(name = "hispanicCategories")
	public String[] getHispanicCategory() {
		return hispanicCategory;
	}

	public void setHispanicCategory(String[] hispanicCategory) {
		this.hispanicCategory = hispanicCategory;
	}

	@XmlElement
	public boolean getIsHispanicLatino() {
		return isHispanicLatino;
	}

	public void setIsHispanicLatino(boolean isHispanicLatino) {
		this.isHispanicLatino = isHispanicLatino;
	}

	@XmlElement(name = "race")
	@XmlElementWrapper(name = "raceValues")
	public String[] getRace() {
		return race;
	}

	public void setRace(String[] race) {
		this.race = race;
	}

	@XmlElement
	public String getHispanicCategoryOther() {
		return hispanicCategoryOther;
	}

	public void setHispanicCategoryOther(String hispanicCategoryOther) {
		this.hispanicCategoryOther = hispanicCategoryOther;
	}

	@XmlElement
	public String getRaceOther() {
		return raceOther;
	}

	public void setRaceOther(String raceOther) {
		this.raceOther = raceOther;
	}

	public RaceEthnicity() { }
}
