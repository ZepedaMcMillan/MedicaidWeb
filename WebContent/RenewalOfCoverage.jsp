<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Renewal of Coverage</title>
<jsp:include page="template/resources.jsp" />
<script type="text/javascript">
	$(function () {
		var numberOfYearsHidden = $('#numberOfYearsHidden'),
		 numberOfYears = $('#numberOfYears');
		
		numberOfYears.val(numberOfYearsHidden.val());
	});
</script>
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="RenewalOfCoverage">
		<div class="content-bg-big">
			<div align="left" class="main-heading">Renewal of Coverage (for APTC Households only)</div>
			<br> <br>
			<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td colspan="2" valign="middle" class="label-bg">To make it
						easier to determine my eligibility for help paying for health
						coverage in future years, I agree to allow Nevada Health Link to
						use my income data, including information from tax returns, for
						the next 5 years (the maximum number of years allowed). The Nevada
						Health Link will send me a notice, let me make changes, and I can
						opt out at any time.</td>
				</tr>

				<tr>
					<td width="60%" valign="middle" class="label-bg">I give permission for tax return access at renewal time</td>
					<td valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="allowReturnAccess" id="allowReturnAccessY" value="true" onclick="toggleConditionalElement('fnRenewalPermissionYRow',true)" ${info.allowReturnAccess ? 'checked' : ''} /> 
						<label for="renewalPermission">Yes</label>
						<br /> 
						<input type="radio" class="radio-button" name="allowReturnAccess" id="allowReturnAccessN" value="false" onclick="toggleConditionalElement('fnRenewalPermissionYRow',false)" ${!info.allowReturnAccess ? 'checked' : ''} /> 
						<label for="renewalPermission">No, do not renew my eligibility for help paying health insurance</label>
					</td>
				</tr>
				<tr style="display:  ${!info.allowReturnAccess ? 'none' : ''};" id="fnRenewalPermissionYRow">
					<td width="60%" valign="middle" class="label-bg">How many
						years?</td>
					<td width="40%" valign="middle" class="field-bg">
						<input type="hidden" name="numberOfYearsHidden" id="numberOfYearsHidden" value="${info.numberOfYears}" />
						<select name="numberOfYears" id="numberOfYears">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select> <br />
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