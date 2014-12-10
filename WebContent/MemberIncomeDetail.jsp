<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Income Details</title>
<jsp:include page="template/resources.jsp" />
<script type="text/javascript">
	$(function () {
		var stateHidden = $('#stateHidden'),
		state = $('#state');
		
		state.val(stateHidden.val());
	});
</script>
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="MemberIncomeDetail">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<input type="hidden" name="itemIndex" id="itemIndex" value="${itemIndex}" />
		<input type="hidden" name="memberIndex" id="memberIndex" value="${memberIndex}" />
		<div class="content-bg-big">		
			<div align="left" class="main-heading" id="MemberIncomeMainHeading">Member Income Details</div>
			<div id="MemberIncomeMainName">&emsp;&emsp;
				<span id="MemberIncomeHOHName" style="font-weight: bold; color: black; font-size: 15pt"></span>
			</div>
			<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id="employmentDetailsTable">			
				<tr>
					<td valign="middle" class="label-bg">What is the name of your Employer?</td>
					<td valign="middle" class="field-bg">
						<input type="text" name="employerName" class="width120" id="employerName" class="width120" value="${info.employerName}" />
					</td>
				</tr>

				<tr>
					<td valign="middle" class="label-bg">What is the address of your Employer?</td>
					<td valign="middle" class="field-bg">
						<input type="text" name="street" class="width120" id="street" value="${info.employerAddress.street}" /> <br> 
						<div class="small-label">Address</div> 
						<input name="city" type="text" id="city" maxlength="50" class="width120" value="${info.employerAddress.city}" /><br />
						<div class="small-label">City</div> 
						<input type="hidden" name="stateHidden" id="stateHidden" value="${info.employerAddress.state}" />
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
						<div class="small-label">State</div>
						<input type="text" name="zip" id="zip" class="width120" value="${info.employerAddress.zip}" /><br />
						<div class="small-label">Zip</div></td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg">What is the phone number of your Employer?</td>
					<td valign="middle" class="field-bg">
						<input type="text" name="employerPhone" id="employerPhone" class="width120 formatPhone" value="${info.employerPhone}" />
					</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg">What is the average hours worked per week?</td>
					<td valign="middle" class="field-bg">
						<input type="text" name="weekHoursWorked" id="weekHoursWorked" class="width120" value="${info.weekHoursWorked}" />
					</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg">What is the gross wages/tips per pay period?</td>
					<td valign="middle" class="field-bg">												
						<fmt:formatNumber type="currency" var="wagesPerPayPeriod" value="${info.wagesPerPayPeriod}" currencySymbol="" groupingUsed="false" />
						<input type="text" name="wagesPerPayPeriod" id="wagesPerPayPeriod" class="width120 formatMoney" value="${wagesPerPayPeriod}"  />
					</td>
				</tr>
				<tr>
					<td width="60%" valign="middle" class="label-bg">How often are you paid?</td>
					<td width="40%" valign="middle" class="field-bg">
						<table>
							<tr>
								<td><label for="payFrequency">Weekly</label></td>
								<td><input type="radio" class="radio-button" name="payFrequency" id="payFrequencyWeekly" value="Weekly" ${info.payFrequency == 'weekly' || info.payFrequency == null ? 'checked' : ''} /></td>
							</tr>
							<tr>
								<td><label for="payFrequency">Every Two Weeks</label>
								</td>
								<td><input type="radio" class="radio-button" name="payFrequency" id="payFrequencyBiWeekly" value="Bi-weekly" ${info.payFrequency == 'Bi-weekly' ? 'checked' : ''} /></td>
							</tr>
							<tr>
								<td><label for="payFrequency">Semi Monthly</label></td>
								<td><input type="radio" class="radio-button" name="payFrequency" id="payFrequencySemiMonthly" value="Semi-monthly" ${info.payFrequency == 'Semi-monthly' ? 'checked' : ''} /></td>
							</tr>
							<tr>
								<td><label for="payFrequency">Monthly</label></td>
								<td><input type="radio" class="radio-button" name="payFrequency" id="payFrequencyMonthly" value="Monthly" ${info.payFrequency == 'Monthly' || info.payFrequency == null ? 'checked' : ''} /></td>
							</tr>
							<tr>
								<td><label for="payFrequency">Annually</label></td>
								<td><input type="radio" class="radio-button" name="payFrequency" id="payFrequencyAnnually" value="Annually" ${info.payFrequency == 'Annually' ? 'checked' : ''} /></td>
							</tr>
						</table>
					</td>
				</tr>

				<tr>
					<td width="60%" valign="middle" class="label-bg">Are you self employed?</td>
					<td width="40%" valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="isSelfEmployed" id="selfEmployedY" value="true" onclick="toggleConditionalElement('selfEmployedYesRow,selfEmployedYesRow2', true)" ${info.isSelfEmployed == 'true' ? 'checked' : ''} />
						<label for="radio5">Yes</label> 
						<input type="radio" class="radio-button" name="isSelfEmployed" id="selfEmployedN" value="false" onclick="toggleConditionalElement('selfEmployedYesRow,selfEmployedYesRow2', false)"  ${info.isSelfEmployed != 'true' ? 'checked' : ''} /> 
						<label for="radio5">No</label>
					</td>
				</tr>
				<tr id="selfEmployedYesRow" style="display: ${info.isSelfEmployed != 'true' ? 'none' : ''}">
					<td valign="middle" class="label-bg">What is your type of work?</td>
					<td valign="middle" class="field-bg">
						<input type="text" name="typeOfWork" class="width120" id="typeOfWork" value="${info.typeOfWork}" />
					</td>
				</tr>
				<tr id="selfEmployedYesRow2" style="display: ${info.isSelfEmployed != 'true' ? 'none' : ''}">
					<td valign="middle" class="label-bg">How much net income (profits once expenses are paid) will you receive this month?</td>
					<td valign="middle" class="field-bg">
						<fmt:formatNumber type="currency" var="monthlyNetIncome" value="${info.monthlyNetIncome}" currencySymbol="" groupingUsed="false" />
						<input name="monthlyNetIncome" class="width120 formatMoney" id="monthlyNetIncome" value="${monthlyNetIncome}" />
					</td>
				</tr>

			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="MemberIncome" name="previousLocation"/>
			</jsp:include>
		</div>
	</form>

</body>
</html>