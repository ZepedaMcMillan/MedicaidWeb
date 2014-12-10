<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>People Covered Details</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="PeopleCoveredDetail">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<input type="hidden" name="itemIndex" id="itemIndex" value="${itemIndex}" />
		<input type="hidden" name="insIndex" id="insIndex" value="${insIndex}" />		
		<div class="content-bg-big">
			<div align="left" class="main-heading" id="MemberIncomeMainHeading">People Covered Details</div>
			<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="60%" valign="middle" class="label-bg">What is the dependents name? <span>*</span>
					</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="firstName" type="text" class="width120" id="firstName" maxlength="50" value="${info.firstName}" /><br />
						<div class="small-label">First</div> 
						<label for="textfield"></label> 
						<input name="middleName" type="text" class="width120" id="middleName" value="${info.middleName}" maxlength="50" /><br />
						<div class="small-label">Middle</div> 
						<input name="lastName" type="text" class="width120" id="lastName" value="${info.middleName}" maxlength="50" /><br />
						<div class="small-label">Last</div> 
					</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg">Enrolled now, plans to enroll, or not enrolled? <span>*</span></td>
					<td colspan="2" valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="enrollmentStatus" id="enrollmentStatusEnrolled" onclick="toggleConditionalElement('plansToEnroll', false)" value="Enrolled Now" ${info.enrollmentStatus == 'Enrolled Now' ? 'checked' : ''} />
						<label for="enrollmentStatus">Enrolled Now</label><br />
						<input type="radio" class="radio-button" name="enrollmentStatus" id="enrollmentStatusPlans" onclick="toggleConditionalElement('plansToEnroll', true)" value="Plans to Enroll" ${info.enrollmentStatus == 'Plans to Enroll' ? 'checked' : ''} />
						<label for="enrollmentStatus">Plans to Enroll</label>
						<div id="plansToEnroll" style="display: ${info.enrollmentStatus != 'Plans to Enroll' ? 'none' : ''}; float:right;">						
							<fmt:formatDate type="date" var="formatEnrollDate" value="${info.enrollmentStartDate}" pattern="MM/dd/yyyy" />
							<input type="text" name="enrollmentStartDate" id="enrollmentStartDate" class="width120 formatDate" value="${formatEnrollDate}" /><br />
							<div class="small-label">Enrollment Start Date<span>*</span></div> 
						</div>
						<div style="clear:both"></div>
						<input type="radio" class="radio-button" name="enrollmentStatus" id="enrollmentStatusNot" onclick="toggleConditionalElement('plansToEnroll', false)" value="Not Enrolled" ${info.enrollmentStatus == 'Not Enrolled' || info.enrollmentStatus == null ? 'checked' : ''} />
						<label for="enrollmentStatus">Not Enrolled</label><br />
					</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg">Changes you plan to make next year?<span>*</span></td>
					<td colspan="2" valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="futureChanges" id="futureChangesDrop" onclick="toggleConditionalElements('#plansToDrop', '#willBecomeEligible')" value="Plans to drop coverage" ${info.futureChanges == 'Plans to drop coverage' || info.enrollmentStatus == null ? 'checked' : ''} />
						<label for="futureChanges">Plans to drop coverage</label>
						<div id="plansToDrop" style="display:${info.futureChanges != 'Will become eligible' ? '' : 'none'}; float:right;">
							<fmt:formatDate type="date" var="formatCoverageDropDate" value="${info.coverageDropDate}" pattern="MM/dd/yyyy" />
							<input type="text" name="coverageDropDate" id="coverageDropDate" class="width120 formatDate" value="${formatCoverageDropDate}" /><br />
							<div class="small-label">Coverage Drop Date<span>*</span></div>
						</div>						
						<div style="clear:both"></div>
						<input type="radio" class="radio-button" name="futureChanges" id="futureChangesEligible" onclick="toggleConditionalElements('#willBecomeEligible', '#plansToDrop')" value="Will become eligible" ${info.futureChanges == 'Will become eligible' ? 'checked' : ''} />
						<label for="futureChanges">Will become eligible</label>
						<div id="willBecomeEligible" style="display:${info.futureChanges != 'Will become eligible' ? 'none' : ''} ; float: right;">						
							<fmt:formatDate type="date" var="formatEligibilityDate" value="${info.eligibilityStartDate}" pattern="MM/dd/yyyy" />
							<input type="text" name="eligibilityStartDate" id="eligibilityStartDate" class="width120 formatDate" value="${formatEligibilityDate}" /><br />
							<div class="small-label">Eligibility Start Date<span>*</span></div>
						</div>
						<div style="clear:both"></div>				
					</td>
				</tr>
			</table>		
			<jsp:include page="template/footer.jsp">
				<jsp:param value="HealthInsuranceDetail?itemIndex=${insIndex}" name="previousLocation"/>
			</jsp:include>
		</div>
	</form>

</body>
</html>