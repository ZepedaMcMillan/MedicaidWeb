<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Details</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="MemberDetail">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<input type="hidden" name="itemIndex" id="itemIndex" value="${itemIndex}" />
		<div class="content-bg-big">	
			<div align="left" class="main-heading">Member Details</div>
			<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="60%" valign="middle" class="label-bg">What is the member's name? <span>*</span>
					</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="firstName" type="text" class="width120" id="firstName" maxlength="50" value="${info.firstName}" required /><br />
						<div class="small-label">First<span>*</span></div> 
						<label for="textfield"></label> 
						<input name="middleName" type="text" class="width120" id="middleName" value="${info.middleName}" maxlength="50" /><br />
						<div class="small-label">Middle</div> 
						<input name="lastName" type="text" class="width120" id="lastName" value="${info.lastName}" maxlength="50" required /><br />
						<div class="small-label">Last<span>*</span>
						</div> 
					</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg">What is the member's date of birth? <span>*</span></td>
					<td colspan="2" valign="middle" class="field-bg">
						<fmt:formatDate type="date" var="formatBirthDate" value="${info.birthDate}" pattern="MM/dd/yyyy" />
						<input class="width120 formatDate" name="birthDate" id="birthDate" value="${formatBirthDate}" required />
					</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg">What is the member's relationship to you?</td>
					<td colspan="2" valign="middle" class="field-bg">
						<input type="hidden" name="relationshipHidden" id="relationshipHidden" value="${info.relationship}" />
						<select name="relationship" class="width120" id="relationship" required>
							<option value="SPOUSE">SPOUSE</option>
							<option value="PARENT OF APPLICANT'S CHILD">PARENT OF APPLICANT'S CHILD</option>
							<option value="PARENT OF APPLICANT (NATURAL, ADOPTIVE, OR STEP)">PARENT OF APPLICANT (NATURAL, ADOPTIVE, OR STEP)</option>
							<option value="CHILD">CHILD</option>
							<option value="GRANDCHILD">GRANDCHILD</option>
							<option value="NEPHEW OR NIECE">NEPHEW OR NIECE</option>
							<option value="SIBLING">SIBLING</option>
							<option value="FIRST OR SECOND COUSIN">FIRST OR SECOND COUSIN</option>
							<option value="OTHER RELATIVE">OTHER RELATIVE</option>
							<option value="BOARDER">BOARDER</option>
							<option value="FRIEND">FRIEND</option>
							<option value="UNBORN">UNBORN</option>
							<option value="FOOD STAMP ATTENDANT ONLY">FOOD STAMP ATTENDANT ONLY</option>
							<option value="STEP CHILD">STEP CHILD</option>
							<option value="STEP GRANDCHILD">STEP GRANDCHILD</option>
							<option value="STEP NEPHEW OR NIECE">STEP NEPHEW OR NIECE</option>
							<option value="STEP BROTHER OR SISTER">STEP BROTHER OR SISTER</option>
							<option value="OTHER SPECIFIED ADULT RELATIVE">OTHER SPECIFIED ADULT RELATIVE</option>
							<option value="FOSTER CHILD">FOSTER CHILD</option>
							<option value="REQUIRED MEMBER NOT RELATED TO HOH">REQUIRED MEMBER NOT RELATED TO HOH</option>
							<option value="CHILD UNRELATED TO APPLICANT"">CHILD UNRELATED TO APPLICANT"</option>
							<option value="UNBORN BUT NOT OF HOH">UNBORN BUT NOT OF HOH</option>
							<option value="STEP PARENT">STEP PARENT</option>
							<option value="DOMESTIC PARTNER">DOMESTIC PARTNER</option>
						</select>
						<div class="small-label">Relationship<span>*</span></div>
					</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg">What is the member's gender?</td>
					<td colspan="2" valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="gender" id="gender" value="Male" ${info.gender != 'Female' ? 'checked' : ''} /> <label for="memberGender">Male</label> 
						<input type="radio" class="radio-button" name="gender" id="gender" value="Female"  ${info.gender == 'Female' ? 'checked' : ''} /> <label for="memberGender">Female</label>
					</td>
				</tr>
			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="HouseHoldInformation" name="previousLocation"/>
			</jsp:include>
		</div>
	</form>

</body>
</html>