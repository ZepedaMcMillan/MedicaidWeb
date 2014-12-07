package gov.nv.dwss.medicaid.application.web.bean;

import java.io.Serializable;

import gov.nv.dwss.medicaid.application.web.model.JobDetails;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

@Component
@Scope(value="session", proxyMode=ScopedProxyMode.TARGET_CLASS)
public class JobDetailsBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private JobDetails jobDetails;
	
	public JobDetailsBean() {
		this.jobDetails = new JobDetails();
	}
	
	public void updateJobDetails(JobDetails jobDetails) {
		this.jobDetails = jobDetails;
	}
	
	public JobDetails getJobDetails() {
		return this.jobDetails;
	}
}
