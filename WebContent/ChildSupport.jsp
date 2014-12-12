<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cooperation with Child Support Enforcement</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm"
		method="post" action="ChildSupport">
		<div class="content-bg-big">
			<div align="left" class="main-heading">Cooperation with Child Support Enforcement</div>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td valign="middle" class="label-bg" width="60%">I know I'll
						be required to cooperate with the agency to collect medical
						support and establish paternity from an absent parent. If I think
						that cooperating to collect medical support will harm me or my
						children, I can tell the agency and I may not have to cooperate.
					</td>
					<td valign="middle" class="field-bg" width="40%">
						<input type="radio" class="radio-button" name="agreeCSECoop" id="agreeCSECoopY" value="true" ${info.agreeCSECoop ? 'checked' : ''} />
						<label for="radio5"> <b>Agree:</b> During the telephone application process, you accepted and agreed
							to the above terms</label><br /><br />
						<input type="radio" class="radio-button" name="agreeCSECoop" id="agreeCSECoopN" value="false" ${!info.agreeCSECoop ? 'checked' : ''} />
						<label for="radio5"><b>Disagree:</b> During the telephone application process, you refused and disagreed to the above terms</label>
					</td>
				</tr>
				<tr id="agreeDisagree">
					
				</tr>
				<tr>
					<td width="60%" valign="middle" class="label-bg">Does any
						child on this application have a parent living outside of the
						home?</td>
					<td width="40%" valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="parentLivesOutside" id="parentLivingOutsideY" value="true" ${info.parentLivesOutside ? 'checked' : ''} />
						<label for="radio5">Yes</label><br />
						<input type="radio" class="radio-button" name="parentLivesOutside" id="parentLivingOutsideN" value="false" ${!info.parentLivesOutside ? 'checked' : ''} />
						<label for="radio5">No</label></td>
				</tr>
			</table>					
			<jsp:include page="template/footer.jsp">
				<jsp:param value="ReleaseOfInformation" name="previousLocation"/>
			</jsp:include>
		</div>
	</form>
</body>
</html>