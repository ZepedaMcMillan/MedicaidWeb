<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HOH Contact Info</title>
<jsp:include page="template/resources.jsp" />
<script type="text/javascript">
	$(function () {
		var stateHidden = $('#stateHidden'),
		state = $('#state'),
		mailStateHidden = $('#mailStateHidden'),
		mailState = $('#mailState');
		
		state.val(stateHidden.val());
		mailState.val(mailStateHidden.val());
	});
</script>
</head>
<body>
	<form id="mainForm" name="mainForm" method="post" action="ContactInformation">
		<jsp:include page="template/header.jsp" />
		<div class="content-bg-big">
			<div align="left" class="main-heading">Contact Information</div>
			<br> <br>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td width="60%" valign="middle" class="label-bg">What is your
						Physical Address? <span>*</span>
					</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="street" type="text" class="width120" id="street" maxlength="100" value="${contact.householdAddress.street}" required /><br />
						<div class="small-label">Physical Address<span>*</span></div> 
						<label for="textfield"></label> 
						<input name="apartment" type="text" class="width120" id="apartment" value="${contact.householdAddress.apartment}" maxlength="50" /><br />
						<div class="small-label">Apartment Number</div>
						<input name="city" type="text" class="width120" id="city" maxlength="50" value="${contact.householdAddress.city}" required /><br />
						<div class="small-label">City<span>*</span></div> 						
						<input type="hidden" name="stateHidden" id="stateHidden" data-id="#state" value="${contact.householdAddress.state}" />
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
						</div> <input name="zip" class="width120" id="zip" maxlength="50" value="${contact.householdAddress.zip}" required /><br />
						<div class="small-label">Zip Code<span>*</span></div>
					</td>
				</tr>
				<tr>
					<td width="60%" valign="middle" class="label-bg">
						Is your mailing address different from your physical address?</td>
					<td valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="isMailingAddress" id="mailPhysicalAddressY" value="y" onclick="toggleConditionalElement('mailAddressRow', true);" ${contact.isMailingAddress == 'y' ? 'checked' : ''} /> <label for="HOHHouseholdMembers">Yes</label> 
						<input type="radio" class="radio-button" name="isMailingAddress" id="mailPhysicalAddressN" value="n" onclick="toggleConditionalElement('mailAddressRow', false);" ${contact.isMailingAddress != 'y' ? 'checked' : ''} /> <label for="HOHHouseholdMembers">No</label>
					</td>
				</tr>
				<tr style="display:${contact.isMailingAddress != 'y' ? 'none' : ''};" id="mailAddressRow">		
					<td width="60%" valign="middle" class="label-bg">What is your Mailing Address?</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="mailStreet" type="text" class="width120" id="mailStreet" maxlength="100" value="${contact.mailingAddress.street}" /><br />
						<div class="small-label">Mailing Address</div> 
						<label for="textfield"></label> 
						<input name="mailApartment" type="text" class="width120" id="mailApartment" maxlength="50" value="${contact.mailingAddress.apartment}" /><br />
						<div class="small-label">Apartment Number</div> 
						<input name="mailCity" type="text" class="width120" id="mailCity" maxlength="50" value="${contact.mailingAddress.city}" /><br />
						<div class="small-label">City</div> 
						<input type="hidden" name="mailStateHidden" id="mailStateHidden" data-id="#mailState" value="${contact.mailingAddress.state}" />
						<select name="mailState" class="width120" id="mailState">
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
						<div class="small-label">State</div> 
						<input name="mailZip" class="width120" id="mailZip" maxlength="50" value="${contact.mailingAddress.zip}" /><br />
						<div class="small-label">Zip Code</div>
					</td>
				</tr>
				<tr>
					<td width="60%" valign="middle" class="label-bg">What is your contact phone number and extension?</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="primaryPhone" class="width120 formatPhone" id="primaryPhone" maxlength="100" value="${contact.primaryPhone}" /><br />
						<div class="small-label">Phone number</div> 
						<input name="primaryExtension" type="text" class="width120" id="primaryExtension" maxlength="50" value="${contact.primaryExtension}" /><br />
						<div class="small-label">Extension</div></td>
				</tr>

				<tr>
					<td width="60%" valign="middle" class="label-bg">Currently,
						all notifications are sent in paper format. In the future, if
						available, would you like to receive information by email?</td>
					<td valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="isEmailNeeded" id="emailNotificationY" value="y" onclick="toggleConditionalElement('emailNotificationRow', true);" ${contact.isEmailNeeded == 'y' ? 'checked' : ''} /> 
						<label for="emailNotification">Yes</label> 
						<input type="radio" class="radio-button" name="isEmailNeeded" id="emailNotificationN" value="n" onclick="toggleConditionalElement('emailNotificationRow', false);" ${contact.isEmailNeeded == 'n' || contact.isEmailNeeded == null ? 'checked' : ''} /> 
						<label for="emailNotification">No</label>
					</td>
				</tr>
				<tr style="display: ${contact.isEmailNeeded != 'y' ? 'none' : ''};" id="emailNotificationRow">
					<td width="60%" valign="middle" class="label-bg">What is your Email address?</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="emailAddress" type="email" class="width120" id="emailAddress" maxlength="50" value="${contact.emailAddress}" /><br />
					</td>
				</tr>
				<tr>
					<td width="60%" valign="middle" class="label-bg">Is English your preferred language?</td>
					<td valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="isEnglishPreferred" id="englishPrefLangY" onclick="toggleConditionalElement('prefLangRow', false);" value="y" ${contact.isEnglishPreferred != 'n' ? 'checked' : ''} /> 
						<label for="englishPrefLang">Yes</label> 
						<input type="radio" class="radio-button" name="isEnglishPreferred" id="englishPrefLangN" onclick="toggleConditionalElement('prefLangRow', true);"  value="n" ${contact.isEnglishPreferred == 'n' ? 'checked' : ''} /> 
						<label for="englishPrefLang">No</label>
					</td>
				</tr>
				<tr style="display: ${contact.isEnglishPreferred != 'n' ? 'none' : ''};" id="prefLangRow">
					<td width="60%" valign="middle" class="label-bg">What is your preferred language?</td>
					<td valign="middle" class="field-bg">							
						<input type="radio" class="radio-button" name="spanishOrOther" id="prefLangS" value="spanish" onclick="toggleConditionalElement('otherLanguage', false);" ${contact.spanishOrOther != 'other' ? 'checked' : ''} /> 
						<label for="prefLang">Spanish</label> 
						<input type="radio" class="radio-button" name="spanishOrOther" id="prefLangO" value="other" onclick="toggleConditionalElement('otherLanguage', true);" ${contact.spanishOrOther == 'other' ? 'checked' : ''} /> 
						<label for="prefLang">Other</label>
						<input type="text" class="width120" id="otherLanguage" name="otherLanguage" value="${contact.otherLanguage}" style="display: ${contact.spanishOrOther != 'other' ? 'none' : ''};" />
					</td>
				</tr>
				<tr>
					<td width="60%" valign="middle" class="label-bg">Do you need an interpreter?</td>
					<td valign="middle" class="field-bg">				
						<input type="radio" class="radio-button" name="isInterpreterNeeded" id="interpreterY" value="y" ${contact.isInterpreterNeeded == 'y' ? 'checked' : ''} /> 
						<label for="englishPrefLang">Yes</label> 
						<input type="radio" class="radio-button" name="isInterpreterNeeded" id="interpreterN" value="n" ${contact.isInterpreterNeeded != 'y' ? 'checked' : ''} /> 
						<label for="englishPrefLang">No</label>
					</td>
				</tr>
			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="HouseHoldInformation" name="previousLocation" />
			</jsp:include>
		</div>
	</form>
</body>
</html>