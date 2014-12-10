<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Authorized Representative Details</title>
<jsp:include page="template/resources.jsp" />
<script type="text/javascript">
	$(function () {
		var stateHidden = $('#stateHidden'),
		state = $('#state')
		
		state.val(stateHidden.val());
	});
</script>
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="AuthorizedRepDetail">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<input type="hidden" name="itemIndex" id="itemIndex" value="${itemIndex}" />
		<div class="content-bg-big">		
			<div align="left" class="main-heading">Authorized Representative Details</div>
			<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="60%" valign="middle" class="label-bg">What is the name?</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="repName" type="text" class="width120" id="repName" maxlength="100" value="${info.repName}" />
					</td>
				</tr>
				<tr>
					<td width="60%" valign="middle" class="label-bg">What is the Address?</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="street" type="text" class="width120" id="street" value="${info.repAddress.street}" required />
						<br />
						<div class="small-label">Address<span>*</span></div>
						<br/> 
						<input name="city" type="text" class="width120" id="city" value="${info.repAddress.city}" required />
						<br />
						<div class="small-label">City<span>*</span></div> 
						<input type="hidden" id="stateHidden" name="stateHidden" value="${info.repAddress.state}" />
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
						</select><br />
						<br />
						<div class="small-label">State</div> 
						<input name="zip" type="zip" class="width120" id="zip" maxlength="50" value="${info.repAddress.zip}" /><br />
						<div class="small-label">Zip<span>*</span></div>
					</td>
				</tr>
				<tr>
					<td class="label-bg">What is the phone number?</td>
					<td class="field-bg"><input name="repPhone" class="width120 formatPhone" id="repPhone" value="${info.repPhone}" /></td>
				</tr>
				<tr>
					<td class="label-bg">By signing, you allow this person to sign your application, to get
						official information about this application and to act for you
						on all future matters with this agency
					</td>
					<td class="field-bg">
						<input type="radio" class="radio-button" name="doYouAgree" id="agreeAuthRep" value="true" ${info.doYouAgree == 'true' ? '' : checked} /> 
						<label for="radio5"> <b>Agree:</b> During the telephone application process, you accepted and agreed to
							the above terms</label><br />
							<br />					
						<input type="radio" class="radio-button" name="doYouAgree" id="disAgreeAuthRep" value="false" ${info.doYouAgree != 'true' ? 'checked' : ''} /> 
						<label for="radio5"> <b>Disagree:</b> During the telephone application process, you
							refused and disagreed to the above terms</label>
					</td>
				</tr>
			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="OtherHealthInsurance" name="previousLocation"/>
			</jsp:include>
		</div>
	</form>
</body>
</html>