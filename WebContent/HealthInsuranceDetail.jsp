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
    var dialog, form,
    	firstName = $("#firstName"),
    	middleName = $("#middleName"),
    	lastName = $("#lastName"),
    	coverageDropDate = $('#coverageDropDate'),
    	eligibilityStartDate = $("#eligibilityStartDate"),
    	enrollmentStartDate = $('#enrollmentStartDate'),
    	enrollmentStatus = $('#enrollmentStatus'),
    	futureChanges = $('#futureChanges'),
    	mainForm = $("#mainForm");
 
    function addItem() {
 		var peopleCovered = new Object();
 		peopleCovered.firstName = firstName.val();
 		peopleCovered.middleName = middleName.val();
 		peopleCovered.lastName = lastName.val();
 		peopleCovered.coverageDropDate = coverageDropDate.val();
 		peopleCovered.eligibilityStartDate = eligibilityStartDate.val();
 		peopleCovered.enrollmentStartDate = enrollmentStartDate.val();
 		peopleCovered.enrollmentStatus = enrollmentStatus.val();
 		peopleCovered.futureChanges = futureChanges.val();

 		$.ajax({
	        url: "editPeopleCovered?insuranceIndex=" + $('#itemIndex').val(),
	        type: 'POST',
	        dataType: 'json',
	        data: JSON.stringify(peopleCovered),
	        contentType: 'application/json',
	        mimeType: 'application/json',
	 
	        success: function () {
	        	dialog.dialog( "close" );
	        	$('#customAction').val('add')
	        	var itemIndex = $('#itemIndex');
	        	if(itemIndex.val() == "-1") {
	        		itemIndex.val("0");
	        	}
	        	mainForm.submit();
	        },
	        error:function(data,status,er) {
	            alert("error: "+data+" status: "+status+" er:"+er);
	        }
	    });
    }
 
    dialog = $( "#dialog-form" ).dialog({
      autoOpen: false,
      height: 300,
      width: 500,
      modal: true,
      buttons: {
        "Add Person": addItem,
        Cancel: function() {
          dialog.dialog( "close" );
        }
      },
      close: function() {
        form[ 0 ].reset();
      }
    });
 
    form = dialog.find( "form" ).on( "submit", function( event ) {
      event.preventDefault();
      addItem();
    });
 
    $( "#addPeopleCovered" ).button().on( "click", function() {
      dialog.dialog( "open" );
    });
  });
  </script>
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="editHealthInsuranceInfo">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<input type="hidden" name="itemIndex" id="itemIndex" value="${itemIndex}" />
		<div class="content-bg-big">
			<div align="left" class="main-heading" style="margin-bottom: 20px">Insurance from jobs</div>
				<table class="form-container" width="100%" border="0" cellspacing="0"
					cellpadding="0">
					<tr>
						<td width="60%" valign="middle" class="label-bg">We need to know about any health coverage you could get through a job.</td>
						<td valign="middle" class="field-bg">
							<input type="text" class="width120" name="employeeName" id="employeeName" value="${info.employeeName}" required /><br />
							<div class="small-label">Employee Name<span>*</span></div> 
							<input type="text" class="width120 formatSocial" name=employeeSSN id="employeeSSN" value="${info.employeeSSN}" required /><br />
							<div class="small-label">Employee Social Security Number<span>*</span></div> 
							<input type="text" class="width120" name=employerName id="employerName" value="${info.employerName}" required /><br />
							<div class="small-label">Employer Name<span>*</span></div> 
							<input type="text" class="width120" name=employerEIN id="employerEIN" value="${info.employerEIN}" required /><br />
							<div class="small-label">Employer Identification Number (EIN)<span>*</span></div> 
							<input type="text" class="width120 formatPhone" name=employerPhone id="employerPhone" value="${info.employerPhone}" required /><br />
							<div class="small-label">Employer Phone Number<span>*</span></div> 
					</tr>
					<tr>
						<td width="60%" valign="middle" class="label-bg">Employer Address</td>
						<td valign="middle" class="field-bg">
							<input type="text" class="width120" name="street" id="street" value="${info.employerAddress.stret}" required /><br />
							<div class="small-label">Street<span>*</span></div>
							<input type="text" class="width120" name="city" id="city" value="${info.employerAddress.city}" required /><br />
							<div class="small-label">City<span>*</span></div>
							<input type="hidden" name="stateHidden" id="stateHidden" data-id="#state" value="${info.employerAddress.state}" />
							<select name="state" class="width120" id="state" required>
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
							<input type="text" class="width40" name="zip" id="zip" value="${info.employerAddress.zip}" required /><br />
							<div class="small-label">Zip<span>*</span></div> 
					</tr>
					<tr>
						<td width="60%" valign="middle" class="label-bg">Who can we contact about employee health coverage at this job?</td>
						<td valign="middle" class="field-bg">
							<input type="text" class="width120" name="name" id="name" value="${info.jobInsuranceContact.name}" /><br />
							<div class="small-label">Contact Name<span>*</span></div> 
							<input type="text" class="width120" name=phone id="phone" value="${info.jobInsuranceContact.phone}" /><br />
							<div class="small-label">Phone Number<span>*</span></div> 
							<input type="text" class="width120" name=email id="email" value="${info.jobInsuranceContact.email}" /><br />
							<div class="small-label">Email Address<span>*</span></div> 
					</tr>
					<tr>
						<td width="60%" valign="middle" class="label-bg">Is the employee currently eligible for coverage offered by this employer?</td>
						<td valign="middle" class="field-bg">
							<input type="radio" class="radio-button" name="isEligible" id="isEligibleY" value="y" onclick="toggleConditionalElement('isEligibleYRow', true, 'isEligibleYRow')" ${info.isEligible == 'y' ? 'checked' : ''} /> 
							<label for="healthCoverageFromJob">Yes</label> 
							<input type="radio" class="radio-button" name="isEligible" id="isEligibleN" value="n" onclick="toggleConditionalElement('isEligibleNRow', false, 'isEligibleYRow')" ${info.isEligible != 'y' ? 'checked' : ''} /> 
							<label for="healthCoverageFromJob">No</label>
						</td>
					</tr>					
					<tr id="isEligibleYRow" style="display:${info.isEligible != 'y' ? 'none' : ''}">
						<td width="60%" valign="middle" class="label-bg">When will they be eligible?</td>
						<td valign="middle" class="field-bg">
							<input type="text" name="coverageDate" id="coverageDate" value="${info.coverageDate}" class="width120 formatDate" /><br />
							<div class="small-label">Coverage Date<span>*</span></div> 
						</td>
					</tr>
					<tr id="isEligibleNoRow" style="display:${info.isEligible != 'y' ? '' : 'none'}">
						<td width="60%" valign="middle" class="label-bg">Will they be eligible in the NEXT 3 months?</td>
						<td valign="middle" class="field-bg">
							<input type="radio" class="radio-button" name="isCoveredNext3Months" id="isCoveredNext3MonthsY" value="y" ${info.isCoveredNext3Months == 'y' ? 'checked' : ''} /> 
							<label for="healthCoverageFromJob">Yes</label> 
							<input type="radio" class="radio-button" name="isCoveredNext3Months" id="isCoveredNext3MonthsN" value="n"  ${info.isCoveredNext3Months != 'y' ? 'checked' : ''} /> 
							<label for="healthCoverageFromJob">No</label>
						</td>
					</tr>
					<tr>
						<td width="60%" valign="middle" class="label-bg">Who in the employee's family will the health plan cover?</td>
						<td valign="middle" class="field-bg">
							<table>
								<tr>
									<td><label for="familyMembersCovered">Spouse</label></td>
									<td><input type="checkbox" name="familyMembersCovered" id="familyMembersCoveredSpouse" value="Spouse" ${Spouse} /></td>
								</tr>
								<tr>
									<td><label for="familyMembersCovered">Domestic Partner</label>
									</td>
									<td><input type="checkbox" name="familyMembersCovered" id="familyMembersDomesticPartner" value="Domestic Partner" ${DomesticPartner} /></td>
								</tr>
								<tr>
									<td><label for="familyMembersCovered">Dependent(s)</label></td>
									<td><input type="checkbox" name="familyMembersCovered" id="familyMembersCoveredDependents" value="Dependent(s)" ${Dependents} /></td>
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
										<td width="15%"><font size="3" color="#0B0B61">Name<span>*</span></font></td>
										<td width="15%"><font size="3" color="#0B0B61">Enrollment</font></td>
										<td width="15%"><font size="3" color="#0B0B61">Future Changes<span>*</span></font></td>
										<td width="10%"><font size="3" color="#0B0B61">Delete</font></td>
									</tr>
									<c:forEach items="${peopleCovered}" var="item" varStatus="loop">								
										<tr>
									        <td width="15%">${item.firstName} ${item.middleName} ${item.lastName}</td>
									        <td width="15%">${item.enrollmentStatus}</td>
									        <td width="15%">${item.futureChanges}</td>
									        <td width="15%">&nbsp;</td>
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
	<div id="dialog-form" title="Add Member Income" style="display:none;">
		<p class="validateTips">All form fields are required.</p>
		
		<form>
			<input type="hidden" name="insuranceIndex" id="insuranceIndex" value="${itemIndex}" />
			<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="60%" valign="middle" class="label-bg">What is the dependents name? <span>*</span>
					</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="firstName" type="text" class="width120" id="firstName" maxlength="50" value="" required /><br />
						<div class="small-label">First<span>*</span></div> 
						<label for="textfield"></label> 
						<input name="middleName" type="text" class="width120" id="middleName" value="" maxlength="50" /><br />
						<div class="small-label">Middle</div> 
						<input name="lastName" type="text" class="width120" id="lastName" value="" maxlength="50" required /><br />
						<div class="small-label">Last<span>*</span></div> 
					</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg">Enrolled now, plans to enroll, or not enrolled? <span>*</span></td>
					<td colspan="2" valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="enrollmentStatus" id="enrollmentStatusEnrolled" onclick="toggleConditionalElement('plansToEnroll', false)" value="Enrolled Now" />
						<label for="enrollmentStatus">Enrolled Now</label><br />
						<input type="radio" class="radio-button" name="enrollmentStatus" id="enrollmentStatusPlans" onclick="toggleConditionalElement('plansToEnroll', true)" value="Plans to Enroll" />
						<label for="enrollmentStatus">Plans to Enroll</label><br />
						<div id="plansToEnroll" style="display:none; float:right;">
							<input type="text" name="enrollmentStartDate" id="enrollmentStartDate" class="width120 formatDate" /><br />
							<div class="small-label">Enrollment Start Date<span>*</span></div> 
						</div>
						<div style="clear:both"></div>
						<input type="radio" class="radio-button" name="enrollmentStatus" id="enrollmentStatusNot" onclick="toggleConditionalElement('plansToEnroll', false)" value="Not Enrolled" />
						<label for="enrollmentStatus">Semi Monthly</label><br />
					</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg">Changes you plan to make next year?<span>*</span></td>
					<td colspan="2" valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="futureChanges" id="futureChangesDrop" onclick="toggleConditionalElements('plansToDrop', true, 'willBecomeEligble')" value="Plans to drop coverage" />
						<label for="futureChanges">Plans to drop coverage</label><br />
						<div id="plansToDrop" style="display:none; float:right;">
							<input type="text" name="coverageDropDate" id="coverageDropDate" class="width120 formatDate" /><br />
							<div class="small-label">Coverage Drop Date<span>*</span></div>
						</div>						
						<div style="clear:both"></div>
						<input type="radio" class="radio-button" name="futureChanges" id="futureChangesEligible" onclick="toggleConditionalElement('willBecomeEligible', true, 'plansToDrop')" value="Will become eligible" />
						<label for="futureChanges">Will become eligible</label><br />
						<div id="willBecomeEligible" style="display:none; float: right;">
							<input type="text" name="eligibilityStartDate" id="eligibilityStartDate" class="width120 formatDate" /><br />
							<div class="small-label">Eligibility Start Date<span>*</span></div>
						</div>
						<div style="clear:both"></div>				
					</td>
				</tr>
			</table>
		</form>
	  </div>

</body>
</html>