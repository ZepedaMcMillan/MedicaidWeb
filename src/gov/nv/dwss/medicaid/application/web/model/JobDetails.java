package gov.nv.dwss.medicaid.application.web.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "jobDetails")
public class JobDetails {
	private String businessObjectId;
	private Channels channels;
	private String templateId;

	@XmlElement
	public String getBusinessObjectId() {
		return businessObjectId;
	}

	public void setBusinessObjectId(String businessObjectId) {
		this.businessObjectId = businessObjectId;
	}

	@XmlElement
	public Channels getChannels() {
		return channels;
	}

	public void setChannels(Channels channels) {
		this.channels = channels;
	}

	@XmlElement
	public String getTemplateId() {
		return templateId;
	}

	public void setTemplateId(String templateId) {
		this.templateId = templateId;
	}

	public JobDetails() {
	}

	public JobDetails(String businessObjectId, Channels channels,
			String templateId) {
		this.businessObjectId = businessObjectId;
		this.channels = channels;
		this.templateId = templateId;
	}

}
