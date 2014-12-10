<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Third Party Liability</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="ThirdPartyLiability">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<div class="content-bg-big">
			<div align="left" class="main-heading">Third Party Liability</div>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td valign="middle" class="label-bg" width="60%"><p>I understand the following
						is an eligibility requirement to receive Medicaid benefits:</p>
						<p>1) If anyone on this
						application receives Medicaid benefits, I give the Medicaid agency
						the right to pursue and get any money from other health insurance,
						insurance, legal settlements, and any other third party that may be
						liable for the medical services paid by Medicaid; and<p>
						<p>2) I give the Medicaid
						agency the right to pursue and get child and medical support from a
						spouse or a parent; and</p>
						<p>3) I agree my household
						members will cooperate with the Medicaid agency to obtain any money
						from insurance companies, legal settlements and third parties and
						will give DHHS notice of any settlements or legal action.<p>
					</td>
					<td valign="middle" class="field-bg" width="40%">
						<input type="radio" class="radio-button" name="agreeThirdParty" id="agreeThirdPartyY" value="true" ${info.agreeThirdParty == 'true' ? 'checked' : ''} />
						<label for="radio5"><b>Agree: </b> During the telephone application process, you accepted and agreed to the above terms</label><br /><br />
						<input type="radio" class="radio-button" name="agreeThirdParty" id="agreeThirdPartyN" value="false" ${info.agreeThirdParty != 'true' ? 'checked' : ''} />
						<label for="radio5"><b>Disagree: </b> During the telephone application process, you refused and disagreed to the above terms</label>
					</td>
				</tr>
			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="MedicaidEstateRecoveryProgram" name="previousLocation" />
			</jsp:include>
		</div>
	</form>

</body>
</html>