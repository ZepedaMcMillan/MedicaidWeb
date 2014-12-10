<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>General Information</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="GeneralInformation">
		<table align="center" width="70%" id="GenInfoMainOuterTable">
			<tr>
				<td id="GenInfoMainOuterTableCell0">
					<div class="content-bg-big" id="GeneralInfoDivHOH">
						<div align="left" class="main-heading" id="GeneralInfoMainHeading" style="margin-bottom: 20px;">General Information</div>
						<div id="GeneralInfoMainName">&emsp;&emsp;<span id="genInfoHOHName" style="font-weight: bold; color: black; font-size: 15pt"></span></div>
						<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id="GeneralInfoHohTable">
							<tr>
								<td width="40%" valign="middle" class="label-bg">What is your Marital Status?</td>
								<td width="60%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="maritalStatus" id="marriedY" value="Married" onclick="toggleConditionalElement('liveWithSpouseRow', true)" ${memberInfo.generalInfo.maritalStatus == 'Married' ? 'checked' : ''} /> <label for="radio5">Married</label>
									<input type="radio" class="radio-button" name="maritalStatus" id="marriedn" value="Single" onclick="toggleConditionalElement('liveWithSpouseRow', false)" ${memberInfo.generalInfo.maritalStatus == 'Single' || memberInfo.generalInfo.maritalStatus == null ?  'checked' : ''} /> <label for="radio5">Single</label> 
									<input type="radio" class="radio-button" name="maritalStatus" id="marriedD" value="Divorced" onclick="toggleConditionalElement('liveWithSpouseRow', false)" ${memberInfo.generalInfo.maritalStatus == 'Divorced' ? 'checked' : ''} /> <label for="radio5">Divorced</label>
									<input type="radio" class="radio-button" name="maritalStatus" id="marriedL" value="Legally Separated" onclick="toggleConditionalElement('liveWithSpouseRow', false)" ${memberInfo.generalInfo.maritalStatus == 'Legally Separated' ? 'checked' : ''}/> <label for="radio5">Legally Separated</label> 
									<input type="radio" class="radio-button" name="maritalStatus" id="marriedNe" value="Never Married" onclick="toggleConditionalElement('liveWithSpouseRow', false)" ${memberInfo.generalInfo.maritalStatus == 'Never Married' ? 'checked' : ''}/> <label for="radio5">Never Married</label> 
									<input type="radio" class="radio-button" name="maritalStatus" id="marriedP" value="Separated" onclick="toggleConditionalElement('liveWithSpouseRow', false)" ${memberInfo.generalInfo.maritalStatus == 'Separated' ? 'checked' : ''}/> <label for="radio5">Separated</label>
									<input type="radio" class="radio-button" name="maritalStatus" id="marriedW" value="Widowed" onclick="toggleConditionalElement('liveWithSpouseRow', false)" ${memberInfo.generalInfo.maritalStatus == 'Widowed' ? 'checked' : ''} /> <label for="radio5">Widowed</label>
								</td>
							</tr>
							<tr style="display: ${memberInfo.generalInfo.maritalStatus != 'Married' ? 'none' : ''};" id="liveWithSpouseRow">
								<td valign="middle" class="label-bg">Do you live with your spouse?</td>
								<td valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="livesWithSpouse" id="liveWithSpouseY" value="true" ${memberInfo.generalInfo.livesWithSpouse == 'true' ? 'checked' : ''} /> <label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="livesWithSpouse" id="liveWithSpouseN" value="false" ${memberInfo.generalInfo.livesWithSpouse != 'true' ? 'checked' : ''} /> <label for="radio5">No</label>
								</td>
							</tr>
							<tr>
								<td valign="middle" class="label-bg">What is your SSN?</td>
								<td valign="middle" class="field-bg"><input name="ssn" id="ssn" class="width120 formatSocial" value="${memberInfo.generalInfo.ssn}" /></td>
							</tr>

							<tr id="genderFemale" style="display: ${memberInfo.generalInfo.gender != 'Female' ? 'none' : ''};">
								<td valign="middle" class="label-bg">Are you pregnant?</td>
								<td valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="isPregnant" id="pregnantY" value="true" onclick="$('#pregnantYes').show();" ${memberInfo.generalInfo.isPregnant == 'true' ? 'checked' : ''} /> <label for="radio12">Yes</label> 
									<input type="radio" class="radio-button" name="isPregnant" id="pregnantN" value="false" onclick="$('#pregnantYes').hide();" ${memberInfo.generalInfo.isPregnant != 'true' ? 'checked' : ''} /> <label for="radio12">No</label></td>
							</tr>
							<tr style="display: ${memberInfo.generalInfo.isPregnant != 'true' ? 'none' : ''};" id="pregnantYes">
								<td valign="middle" class="field-bg">What is the due date?
									<fmt:formatDate type="date" var="formatPregnancyDate" value="${memberInfo.generalInfo.pregnancyDueDate}" pattern="MM/dd/yyyy" />
									<input class="formatDate" name="pregnancyDueDate" id="pregnancyDueDate" value="${formatPregnancyDate}" />
								</td>
								<td valign="middle" class="field-bg">How many babies are
									you expecting? <input type="number" name="numberOfBabies" id="numberOfBabies" value="${memberInfo.generalInfo.numberOfBabies}" />
								</td>
							</tr>

							<tr>
								<td valign="middle" class="label-bg">Are you legally blind or permanently disabled?</td>
								<td valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="isDisabledBlind" id="legallyBlindY" value="true" ${memberInfo.otherAssistance.isDisabledBlind == 'true' ? 'checked' : ''} /> <label for="radio12">Yes</label> 
									<input type="radio" class="radio-button" name="isDisabledBlind" id="legallyBlindN" value="false" ${memberInfo.otherAssistance.isDisabledBlind != 'true' ? 'checked' : ''} /> <label for="radio12">No</label>
								</td>
							</tr>
							<tr>
								<td valign="middle" class="label-bg">Are you receiving Supplemental Security Income?</td>
								<td valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="hasSSI" id="supplSecurityIncomeY" value="true" ${memberInfo.otherAssistance.hasSSI == 'true' ? 'checked' : ''} /> <label for="radio12">Yes</label> 
									<input type="radio" class="radio-button" name="hasSSI" id="supplSecurityIncomeN" value="false" ${memberInfo.otherAssistance.hasSSI != 'true' ? 'checked' : ''} /> <label for="radio12">No</label>
								</td>
							</tr>
							<tr>
								<td valign="middle" class="label-bg">Do you need help with
									activities of daily living through personal assistance services
									or a medical facility?</td>
								<td valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="needsDailyAssistance" id="helpWithDailyLivingY" value="true" ${memberInfo.otherAssistance.needsDailyAssistance == 'true' ? 'checked' : ''} /> <label for="radio12">Yes</label>
									<input type="radio" class="radio-button" name="needsDailyAssistance" id="helpWithDailyLivingN" value="false" ${memberInfo.otherAssistance.needsDailyAssistance != 'true' ? 'checked' : ''} /> <label for="radio12">No</label>
								</td>
							</tr>
						</table>
						<jsp:include page="template/footer.jsp">
							<jsp:param value="ContactInformation" name="previousLocation" />
						</jsp:include>
					</div>
				</td>
				<td>
					<jsp:include page="template/members.jsp">
						<jsp:param value="GeneralInformation" name="location" />
					</jsp:include>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>