<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Other Assistance Inquiry</title>
<jsp:include page="template/resources.jsp" />
<script type="text/javascript">
	$(function () {
		var stateHidden = $('#stateFosterHidden'),
		state = $('#stateFosterCare');
		
		state.val(stateHidden.val());
	});
</script>
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="OtherAssistance">
		<table align="center" width="70%" id="OtherAsstMainOuterTable">
			<tr>
				<td id="OtherAsstMainOuterTableCell0">
					<div class="content-bg-big" id="OtherAsstDivHOH">
						<div align="left" class="main-heading" id="OtherAsstMainHeading" style="margin-bottom: 20px;">Other Assistance Inquiry</div>
						<div id="OtherAsstMainName">&emsp;&emsp;<span id="OtherAsstHOHName" style="font-weight: bold; color: black; font-size: 15pt"></span>
						</div>
						<table class="form-container" style="" width="100%" border="0" cellspacing="0" cellpadding="0" id="otherAssistanceMainTable">
							<tr>
								<td width="60%" valign="middle" class="label-bg">Are you
									applying for Medicaid, Nevada Check-Up or assistance with your
									health insurance premiums (Advanced Premium Tax Credit - APTC)?
								</td>
								<td width="40%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="applyingForOther" id="mainRadioY" value="y" onclick="toggleConditionalElement('OtherAssistanceYesTable', true);" ${otherAssistance.applyingForOther == 'y' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="applyingForOther" id="mainRadioN" value="n" onclick="toggleConditionalElement('OtherAssistanceYesTable', false);" ${otherAssistance.applyingForOther != 'y' ? 'checked' : ''} />
									<label for="radio5">No</label>
								</td>
							</tr>
						</table>
						<table class="form-container" style="display: ${otherAssistance.applyingForOther != 'y' ? 'none' : ''};" width="100%" border="0" cellspacing="0" cellpadding="0" id="OtherAssistanceYesTable">
							<tr>
								<td valign="middle" class="label-bg">What is your SSN?</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="ssn" class="width120 formatSocial" id="ssn" value="${otherAssistance.ssn}" />
								</td>
							</tr>
							
							<tr style="display:" id="mainSection1">
								<td width="60%" valign="middle" class="label-bg">If you are a child, under the age of 19, do you have access to public
									employee coverage?</td>
								<td width="40%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="hasPublicEmployeeCoverage" id="underAgeY" ${otherAssistance.hasPublicEmployeeCoverage == 'y' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="hasPublicEmployeeCoverage" id="underAgeN" ${otherAssistance.hasPublicEmployeeCoverage != 'y' ? 'checked' : ''} /> 
									<label for="radio5">No</label>
								</td>
							</tr>
							<tr style="display:" id="mainSection2">
								<td width="50%" valign="middle" class="label-bg">Are you a US citizen?</td>
								<td width="50%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="isUSCitizen" id="USCitizenY" value="y" onclick="toggleConditionalElement('USCitizenNo', false)" ${otherAssistance.isUSCitizen != 'n' ? 'checked' : ''} />
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="isUSCitizen" id="USCitizenN" value="n" onclick="toggleConditionalElement('USCitizenNo', true)" ${otherAssistance.isUSCitizen == 'n' ? 'checked' : ''} /> 
									<label for="radio5">No</label>
								</td>
							</tr>

							<tr>
								<td width="60%" valign="middle" class="label-bg">Have you lived in the US since 1996?</td>
								<td width="40%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" value='y' name="livedSince1996" id="lived1996Y" ${otherAssistance.livedSince1996 == 'y' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" value="n" name="livedSince1996" id="lived1996N" ${otherAssistance.livedSince1996 != 'y' ? 'checked' : ''} /> 
									<label for="radio5">No</label>
								</td>
							</tr>

							<tr style="display: ${otherAssistance.isUSCitizen != 'n' ? 'none' : ''};" id="USCitizenNo">
								<td width="60%" valign="middle" class="label-bg">Do you
									have eligible immigration status?</td>
								<td width="40%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="hasEligibleImmigration" id="immigrationStatusY" value="y" onclick="toggleConditionalElement('ImmigrationStatusYes1,ImmigrationStatusYes2', true);" ${otherAssistance.hasEligibleImmigration == 'y' ? 'checked' : ''} />
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="hasEligibleImmigration" id="immigrationStatusN" value="n" onclick="toggleConditionalElement('ImmigrationStatusYes1,ImmigrationStatusYes2', false);" ${otherAssistance.hasEligibleImmigration != 'y' ? 'checked' : ''} /> 
								<label for="radio5">No</label>
							</td>
							</tr>

							<tr style="display: ${otherAssistance.hasEligibleImmigration != 'n' ? 'none' : ''};" id="ImmigrationStatusYes1">
								<td valign="middle" class="label-bg">What is your
									immigration type?</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="immigrationType" class="width120" id="immigrationType" value="${otherAssistance.immigrationType}" /></td>
							</tr>
							<tr style="display: ${otherAssistance.hasEligibleImmigration != 'n' ? 'none' : ''};" id="ImmigrationStatusYes2">
								<td valign="middle" class="label-bg">What is your
									immigration ID number?</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="immigrationIdNumber" class="width120" id="immigrationIdNumber" value="${otherAssistance.immigrationIdNumber}" /></td>
							</tr>
							<tr style="display:" id="mainSection3">
								<td width="50%" valign="middle" class="label-bg">Are you,
									your spouse, domestic partner or your parent (if you are a
									minor) an honorably discharged veteran or active duty member of
									the military?</td>
								<td width="50%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="isVeteran" id="veteranY" value="y" ${otherAssistance.isVeteran == 'y' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="isVeteran" id="veteranN" value="n" ${otherAssistance.isVeteran != 'y' ? 'checked' : ''} /> 
									<label for="radio5">No</label>
								</td>
							</tr>
							<tr style="display:" id="mainSection4">
								<td width="50%" valign="middle" class="label-bg">Are you a full time student?</td>
								<td width="50%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" value="y" name="isStudent" id="ftStudentY" ${otherAssistance.isStudent == 'y' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" value="n" name="isStudent" id="ftStudentN" ${otherAssistance.isStudent != 'y' ? 'checked' : ''} /> 
									<label for="radio5">No</label>
								</td>
							</tr>

							<tr style="display:" id="mainSection5">
								<td width="50%" valign="middle" class="label-bg">Are you an American Indian or Alaskan Native?</td>
								<td width="50%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="isNative" id="AMorAlY" value="y" onclick="toggleConditionalElement('nativeY', true);" ${otherAssistance.isNative == 'y' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label>
									<input type="radio" class="radio-button" name="isNative" id="AMorAlN" value="n" onclick="toggleConditionalElement('nativeY', false);" ${otherAssistance.isNative != 'y' ? 'checked' : ''} /> 
									<label for="radio5">No</label></td>
							</tr>

							<tr style="display: ${otherAssistance.isNative != 'y' ? 'none' : ''}" id="nativeY">
								<td valign="middle" class="label-bg">What is your tribe?</td>
								<td valign="middle" class="field-bg"><input type="text" name="tribe" class="width120" id="tribe" value="${otherAssistance.tribe}" /></td>
							</tr>

							<tr style="display:" id="mainSection6">
								<td width="50%" valign="middle" class="label-bg">If under
									age 26, have you ever been in foster care?</td>
								<td width="50%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="beenInFosterCare" id="fosterCareY" value="y" onclick="toggleConditionalElement('fosterCareYes1,fosterCareYes2,fosterCareYes3', true);" ${otherAssistance.beenInFosterCare == 'y' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="beenInFosterCare" id="fosterCareN" value="n" onclick="toggleConditionalElement('fosterCareYes1,fosterCareYes2,fosterCareYes3', false);" ${otherAssistance.beenInFosterCare != 'y' ? 'checked' : ''} /> 
									<label for="radio5">No</label>
								</td>
							</tr>
							<tr style="display:${otherAssistance.beenInFosterCare != 'y' ? 'none' : ''}" id="fosterCareYes1">
								<td valign="middle" class="label-bg">Which US state?</td>
								<td valign="middle" class="field-bg">
									<input type="hidden" id="stateFosterHidden" name="stateFosterHidden" data-id="stateFosterCare" value="${otherAssistance.stateFosterCare}" />
									<select name="stateFosterCare" class="width120" id="stateFosterCare">
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
								</select></td>
							</tr>
							<tr style="display:${otherAssistance.beenInFosterCare != 'y' ? 'none' : ''};" id="fosterCareYes2">
								<td valign="middle" class="label-bg">Age when you left the
									program?</td>
								<td valign="middle" class="field-bg"><input type="text"
									name="ageWhenLeft" class="width40" id="ageWhenLeft" value="${otherAssistance.ageWhenLeft}" /></td>
							</tr>
							<tr style="display:${otherAssistance.beenInFosterCare != 'y' ? 'none' : ''};" id="fosterCareYes3">
								<td width="50%" valign="middle" class="label-bg">Did you
									receive health care through a state Medicaid program?</td>
								<td width="50%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="receivedHealthcare" id="healthCarethroughStateY" value="y" ${otherAssistance.receivedHealthcare == 'y' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label>
									<input type="radio" class="radio-button" name="receivedHealthcare" id="healthCarethroughStateN" value="n" ${otherAssistance.receivedHealthcare != 'y' ? 'checked' : ''} /> 
									<label for="radio5">No</label>
								</td>
							</tr>

							<tr style="display:" id="mainSection7">
								<td width="50%" valign="middle" class="label-bg">Are you
									the parent or primary caretaker relative of any child(ren),
									under the age of 19, in the household?</td>
								<td width="50%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="isPrimaryCareTaker" id="careTakerY" value="y" onclick="toggleConditionalElement('careTakerYes', true);" ${otherAssistance.isPrimaryCareTaker == 'y' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="isPrimaryCareTaker" id="careTakerN" value="n" onclick="toggleConditionalElement('careTakerYes', false);" ${otherAssistance.isPrimaryCareTaker != 'y' ? 'checked' : ''} /> 
									<label for="radio5">No</label>
								</td>
							</tr>
							<tr style="display:${otherAssistance.isPrimaryCareTaker != 'y' ? 'none' : ''};" id="careTakerYes">
								<td valign="middle" class="label-bg">Who?</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="childCare" id="childCare" value="${otherAssistance.childCare}" /></td>
							</tr>

							<tr style="display:" id="mainSection8">
								<td width="50%" valign="middle" class="label-bg">Do you
									have medical bills for the past three months that you need help
									with?</td>
								<td width="50%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="hasPastMedicalBills" id="medBillsY" value="y" onclick="toggleConditionalElement('medBillsYes', true);" ${otherAssistance.hasPastMedicalBills == 'y' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="hasPastMedicalBills" id="medBillsN" value="n" onclick="toggleConditionalElement('medBillsYes', true);" ${otherAssistance.hasPastMedicalBills != 'y' ? 'checked' : ''} /> 
									<label for="radio5">No</label>
								</td>
							</tr>
							<tr style="display:${otherAssistance.hasPastMedicalBills != 'y' ? 'none' : ''};" id="medBillsYes">
								<td valign="middle" class="label-bg">What Months?</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="billMonths" class="width120" id="billMonths" value="${otherAssistance.billMonths}" /></td>
							</tr>


						</table>
						<jsp:include page="template/footer.jsp">
							<jsp:param value="TaxInformation?memberIndex=${param.memberIndex}" name="previousLocation"/>
						</jsp:include>
					</div>
				</td>
				<td>
					<jsp:include page="template/members.jsp">
						<jsp:param value="OtherAssistance" name="location" />
					</jsp:include>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>