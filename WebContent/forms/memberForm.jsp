<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add/Update Member Information</title>
</head>
<body>
	<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="60%" valign="middle" class="label-bg">What is the member's Name? <span>*</span>
			</td>
			<td width="40%" valign="middle" class="field-bg">
				<input name="firstName" type="text" class="width120" id="firstName" maxlength="50" value="${member.generalInfo.firstName}" required /><br />
				<div class="small-label">First<span>*</span></div> 
				<label for="textfield"></label> 
				<input name="middleName" type="text" class="width120" id="middleName" value="${member.generalInfo.middleName}" maxlength="50" /><br />
				<div class="small-label">Middle</div> 
				<input name="lastName" type="text" class="width120" id="lastName" value="${member.generalInfo.lastName}" maxlength="50" required /><br />
				<div class="small-label">Last<span>*</span>
				</div> 
				<input name="suffix" type="text" class="width120" id="suffix" maxlength="50" value="${member.generalInfo.suffix}" /><br />
				<div class="small-label">Suffix</div></td>
		</tr>
		<tr>
			<td valign="middle" class="label-bg">What is the member's Date of Birth? <span>*</span></td>
			<td colspan="2" valign="middle" class="field-bg">
				<fmt:formatDate type="date" var="formatBirthDate" value="${member.generalInfo.birthDate}" pattern="yyyy-MM-dd" />
				<input type="date" class="width120" name="birthDate" id="birthDate" value="${formatBirthDate}" required />
			</td>
		</tr>
		<tr>
			<td valign="middle" class="label-bg">What is the member's Gender?</td>
			<td colspan="2" valign="middle" class="field-bg">
				<input type="radio" class="radio-button" name="gender" id="genderMale" value="Male" ${maleChecked} /> <label for="HOHGender">Male</label> 
				<input type="radio" class="radio-button" name="gender" id="genderFemale" value="Female" ${femaleChecked} /> <label for="HOHGender">Female</label>
			</td>
		</tr>
		<tr>
			<td valign="middle" class="label-bg">What is your relationship to the member?</td>
			<td colspan="2" valign="middle" class="field-bg">
				<input name="relationship" type="text" class="width120" id="relationship" maxlength="50" value="${member.generalInfo.relationship}" /> <label for="relationship">Relationship</label>
			</td>
		</tr>
	</table>
</body>
</html>