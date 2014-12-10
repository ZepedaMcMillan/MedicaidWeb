<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Authorized Representatives</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="ReleaseOfInformation">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<div class="content-bg-big">
			<div align="left" class="main-heading">Release of Information</div>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td valign="middle" class="label-bg" width="60%">
						<p>I hereby authorize and
						consent to the release of all information concerning me or my
						household members to the Department of Health and Human Services
						by the holder of the information such as, but not limited to, wage
						information, information made confidential by law, as well as
						patient information privileged under NRS 49.225, or any other
						provision of law. I hereby release the holder of the information
						from liability, if any, resulting from the release (disclosure) of
						the required information.</p>
						<p>If I am 60 years of age
						or older, I hereby consent to the disclosure of my identity and
						waive my right as an older person to have my identity kept
						confidential. I hereby release the holder of information from
						liability, if any, resulting from the disclosure of the required
						information.</p>
					</td>
					<td valign="middle" class="field-bg" width="40%">
						<input type="radio" class="radio-button" name="agreeInfoRelease" id="agreeInfoReleaseY" value="true" ${info.agreeInfoRelease == 'true' ? 'checked' : ''} /> 
						<label for="radio5"> <b>Agree: </b> During the telephone application process, you accepted and agreed
							to the above terms</label><br /><br />
						<input type="radio" class="radio-button" name="agreeInfoRelease" id="agreeInfoReleaseN" value="false" ${info.agreeInfoRelease != 'true' ? 'checked' : ''} /> 
						<label for="radio5"> <b>Disagree: </b> During the telephone
							application process, you refused and disagreed to the above terms</label>
					</td>
				</tr>
			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="YourResponsibilities" name="previousLocation" />
			</jsp:include>
		</div>
	</form>
</body>
</html>