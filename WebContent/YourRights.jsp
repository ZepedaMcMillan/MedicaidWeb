<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your Rights</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="YourRights">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<div class="content-bg-big">
			<div align="left" class="main-heading">Your Rights</div>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td valign="middle" class="label-bg" width="60%">If you think we made a
						mistake, or have not acted timely on your application you can
						appeal. That means you can ask us to look at your case again. You
						must request an appeal in writing within 90 days of the date of
						the notice. The notice will tell you how to appeal. You may
						appoint a representative to act for you in the appeals process.
						Contact us, and we can help you with your appeal.</td>
					<td valign="middle" class="field-bg" width="40%">
						<input type="radio" class="radio-button" name="agreeRights" id="agreeRightsY" value="true" ${info.agreeRights == 'true' ? 'checked' : ''} />
						<label for="radio5"><b>Agree: </b> During the telephone application process, you accepted and agreed to the above terms</label><br /><br />
						<input type="radio" class="radio-button" name="agreeRights" id="agreeRightsN" value="false" ${info.agreeRights != 'true' ? 'checked' : ''} /> 
						<label for="radio5"><b>Disagree:</b> During the telephone application process, you refused and disagreed to the above terms</label>
					</td>
				</tr>
			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="ReviewsAndInvestigations" name="previousLocation" />
			</jsp:include>
		</div>
	</form>

</body>
</html>