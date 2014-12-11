<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Health Insurance Information</title>
<jsp:include page="template/resources.jsp" />
<script type="text/javascript">
	$(function() {
		var mainForm = $('#mainForm'),
		itemIndex = $('#itemIndex'),
		subIndex = $('#subIndex'),
		customAction = $('#customAction');
		
	    $('#addPeopleCovered').button().on('click', function() {
			customAction.val('editPerson');
			mainForm.submit();
		});
	    
	    $(".btnUpdate").on( "click", function(event) {
			var id = event.target.id,
				el = $('#' + id);
					
			customAction.val('editPerson');
			subIndex.val(el.attr('data-index'));
			
			mainForm.submit();
		});		
		
		$(".btnDelete").on( "click", function(event) {
			var id = event.target.id,
				el = $('#' + id);
					
			var conf = confirm("Are you sure you want to delete this Person?");
			if(conf) {	
				customAction.val('deletePerson');
				subIndex.val(el.attr('data-index'));
				
				mainForm.submit();
			}
		});
	});
</script>
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="HealthInsuranceDetail">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<input type="hidden" name="itemIndex" id="itemIndex" value="${itemIndex}" />
		<input type="hidden" name="subIndex" id="subIndex" value="" />
		<div class="content-bg-big">
			<div align="left" class="main-heading" style="margin-bottom: 20px">Insurance from jobs</div>
				<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="60%" valign="middle" class="label-bg">We need to know about any health coverage you could get through a job.</td>
						<td valign="middle" class="field-bg">
							<input type="text" class="width120" name="employeeName" id="employeeName" value="${info.employeeName}" /><br />
							<div class="small-label">Employee Name</div> 
							<input type="text" class="width120 formatSocial" name=employeeSSN id="employeeSSN" value="${info.employeeSSN}" /><br />
							<div class="small-label">Employee Social Security Number</div> 
							<input type="text" class="width120" name=employerName id="employerName" value="${info.employerName}" /><br />
							<div class="small-label">Employer Name</div> 
							<input type="text" class="width120 formatEIN" name=employerEIN id="employerEIN" value="${info.employerEIN}" /><br />
							<div class="small-label">Employer Identification Number (EIN)</div> 
							<input type="text" class="width120 formatPhone" name=employerPhone id="employerPhone" value="${info.employerPhone}" /><br />
							<div class="small-label">Employer Phone Number</div> 
					</tr>
					<tr>
						<td width="60%" valign="middle" class="label-bg">Employer Address</td>
						<td valign="middle" class="field-bg">
							<input type="text" class="width120" name="street" id="street" value="${info.employerAddress.street}" /><br />
							<div class="small-label">Street</div>
							<input type="text" class="width120" name="city" id="city" value="${info.employerAddress.city}" /><br />
							<div class="small-label">City</div>
							<input type="hidden" name="stateHidden" id="stateHidden" data-id="#state" value="${info.employerAddress.state}" />
							<select name="state" class="width120" id="state">
								<option value="AL">Alabama</option>
								<option value="AK">Alaska</option>
								<option value="AZ">Arizona</option>
								<option value="AR">Arkansas</option>
								<option value="CA">California</option>
								<option value="CO">Colorado</option>
								<option value="CT">Connecticut</option>
								<option value="DE">Delaware</option>
								<option value="DC">District Of Columbia</option>
								<option value="FL">Florida</option>
								<option value="GA">Georgia</option>
								<option value="HI">Hawaii</option>
								<option value="ID">Idaho</option>
								<option value="IL">Illinois</option>
								<option value="IN">Indiana</option>
								<option value="IA">Iowa</option>
								<option value="KS">Kansas</option>
								<option value="KY">Kentucky</option>
								<option value="LA">Louisiana</option>
								<option value="ME">Maine</option>
								<option value="MD">Maryland</option>
								<option value="MA">Massachusetts</option>
								<option value="MI">Michigan</option>
								<option value="MN">Minnesota</option>
								<option value="MS">Mississippi</option>
								<option value="MO">Missouri</option>
								<option value="MT">Montana</option>
								<option value="NE">Nebraska</option>
								<option value="NV">Nevada</option>
								<option value="NH">New Hampshire</option>
								<option value="NJ">New Jersey</option>
								<option value="NM">New Mexico</option>
								<option value="NY">New York</option>
								<option value="NC">North Carolina</option>
								<option value="ND">North Dakota</option>
								<option value="OH">Ohio</option>
								<option value="OK">Oklahoma</option>
								<option value="OR">Oregon</option>
								<option value="PA">Pennsylvania</option>
								<option value="RI">Rhode Island</option>
								<option value="SC">South Carolina</option>
								<option value="SD">South Dakota</option>
								<option value="TN">Tennessee</option>
								<option value="TX">Texas</option>
								<option value="UT">Utah</option>
								<option value="VT">Vermont</option>
								<option value="VA">Virginia</option>
								<option value="WA">Washington</option>
								<option value="WV">West Virginia</option>
								<option value="WI">Wisconsin</option>
								<option value="WY">Wyoming</option>
							</select> <br />
							<div class="small-label">State<span>*</span>
							<input type="text" class="width40" name="zip" id="zip" value="${info.employerAddress.zip}" /><br />
							<div class="small-label">Zip</div> 
					</tr>
					<tr>
						<td width="60%" valign="middle" class="label-bg">Who can we contact about employee health coverage at this job?</td>
						<td valign="middle" class="field-bg">
							<input type="text" class="width120" name="name" id="name" value="${info.jobInsuranceContact.name}" /><br />
							<div class="small-label">Contact Name</div> 
							<input type="text" class="width120 formatPhone" name="phone" id="phone" value="${info.jobInsuranceContact.phone}" /><br />
							<div class="small-label">Phone Number</div> 
							<input type="text" class="width120" name=email id="email" value="${info.jobInsuranceContact.email}" /><br />
							<div class="small-label">Email Address</div> 
					</tr>
					<tr>
						<td width="60%" valign="middle" class="label-bg">Is the employee currently eligible for coverage offered by this employer?</td>
						<td valign="middle" class="field-bg">
							<input type="radio" class="radio-button" name="isEligible" id="isEligibleY" value="true" onclick="toggleConditionalElements('#isEligibleYRow', null);" ${info.isEligible ? 'checked' : ''} /> 
							<label for="healthCoverageFromJob">Yes</label> 
							<input type="radio" class="radio-button" name="isEligible" id="isEligibleN" value="false" onclick="toggleConditionalElements(null, '#isEligibleYRow');" ${!info.isEligible ? 'checked' : ''} /> 
							<label for="healthCoverageFromJob">No</label>
						</td>
					</tr>											
					<tr id="isEligibleYRow" style="display:${!info.isEligible ? 'none' : ''}">
						<td width="60%" valign="middle" class="label-bg">Will this job offer coverage next year?</td>
						<td valign="middle" class="field-bg">
							<input type="radio" class="radio-button" name="isCoveredNextYear" id="isCoveredNextYearY" value="true" ${info.isCoveredNextYear ? 'checked' : ''} /> 
							<label for="healthCoverageFromJob">Yes</label> 
							<input type="radio" class="radio-button" name="isCoveredNextYear" id="isCoveredNextYearN" value="false" ${!info.isCoveredNextYear ? 'checked' : ''} /> 
							<label for="healthCoverageFromJob">No</label>
						</td>
					</tr>
					<tr id="isEligibleNRow">
						<td width="60%" valign="middle" class="label-bg">Will they be eligible in the NEXT 3 months?</td>
						<td valign="middle" class="field-bg">
							<input type="radio" class="radio-button" name="isCoveredNext3Months" id="isCoveredNext3MonthsY" onclick="toggleConditionalElements(null, '#isCoveredNext3MonthsNRow');" value="true" ${info.isCoveredNext3Months ? 'checked' : ''} /> 
							<label for="healthCoverageFromJob">Yes</label> 
							<input type="radio" class="radio-button" name="isCoveredNext3Months" id="isCoveredNext3MonthsN" onclick="toggleConditionalElements('#isCoveredNext3MonthsNRow', null);" value="false"  ${!info.isCoveredNext3Months ? 'checked' : ''} /> 
							<label for="healthCoverageFromJob">No</label>
						</td>
					</tr>				
					<tr id="isCoveredNext3MonthsNRow" style="display:${info.isCoveredNext3Months ? 'none' : ''}">
						<td width="60%" valign="middle" class="label-bg">When will they be eligible?</td>
						<td valign="middle" class="field-bg">
							<fmt:formatDate type="date" var="formatCoverageDate" value="${info.coverageDate}" pattern="MM/dd/yyyy" />
							<input type="text" name="coverageDate" id="coverageDate" value="${formatCoverageDate}" class="width120 formatDate" /><br />
							<div class="small-label">Coverage Date</div> 
						</td>
					</tr>
					<tr>
						<td width="60%" valign="middle" class="label-bg">Who in the employee's family will the health plan cover?</td>
						<td valign="middle" class="field-bg">
							<table>
								<tr>
									<td><label for="familyMembersCovered">Spouse</label></td>
									<td><input type="checkbox" class="radio-button" name="familyMembersCovered" id="familyMembersCoveredSpouse" value="Spouse" ${Spouse} /></td>
								</tr>
								<tr>
									<td><label for="familyMembersCovered">Domestic Partner</label>
									</td>
									<td><input type="checkbox" class="radio-button" name="familyMembersCovered" id="familyMembersDomesticPartner" value="Domestic Partner" ${DomesticPartner} /></td>
								</tr>
								<tr>
									<td><label for="familyMembersCovered">Dependent(s)</label></td>
									<td><input type="checkbox" class="radio-button" name="familyMembersCovered" id="familyMembersCoveredDependents" value="Dependent(s)" ${Dependents} /></td>
								</tr>
							</table>
						</td>
					</tr>					
				</table>
				<div id="peopleCoveredRow">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" class="form-container">
						<tr>
							<td width="20%" valign="middle" class="label-bg">
								<input type="button" id="addPeopleCovered" name="addPeopleCovered" value="Add People" width="50" />
							</td>
							<td width="80%" valign="middle" class="field-bg">
								<table id="peopleCoveredTable" width="100%" cellspacing="3">
									<tr>
										<td width="20%"><font size="3" color="#0B0B61">Name</font></td>
										<td width="20%"><font size="3" color="#0B0B61">Enrollment</font></td>
										<td width="20%"><font size="3" color="#0B0B61">Future Changes</font></td>
										<td width="40%"><font size="3" color="#0B0B61">Actions</font></td>
									</tr>
									<c:forEach items="${peopleCovered}" var="item" varStatus="loop">								
										<tr>
									        <td width="20%">${item.firstName} ${item.middleName} ${item.lastName}</td>
									        <td width="20%">${item.enrollmentStatus}</td>
									        <td width="20%">${item.futureChanges}</td>
									        <td width="40%">
									        	<input id="incomeItemBtnUpdate${loop.index}" class="btnUpdate itemCommandBtn" type="button" value="update" data-index="${loop.index}" />
											    <input id="incomeItemBtnDelete${loop.index}"  class="btnDelete itemCommandBtn" type="button" value="delete" data-index="${loop.index}" />
									        </td>
									  	</tr>
								    </c:forEach>
								</table>
							</td>
						</tr>
					</table>
				</div>
			
				<jsp:include page="template/footer.jsp">
					<jsp:param value="HealthInsuranceInformation" name="previousLocation"/>
				</jsp:include>
			</div>
	</form>
</body>
</html>