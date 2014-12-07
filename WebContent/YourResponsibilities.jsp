<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your Responsibilities</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="YourResponsibilities">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<div class="content-bg-big">		
			<div align="left" class="main-heading">Your Responsibilities</div>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td valign="middle" class="label-bg" width="60%">I know that I must tell
						the program I'll be enrolled in if information I listed on this
						application changes. I know I can make changes by calling customer
						service and that I must report by the fifth (5th) of the following
						month. I understand that a change in my information could affect
						my eligibility for member(s) of my household.</td>
					<td valign="middle" class="field-bg" width="40%">
						<input type="radio" class="radio-button" name="agreeResp" id="agreeRespY" value="y" ${info.agreeResp == 'y' ? 'checked' : ''}  />
						<label for="radio5"><b>Agree: </b> During the telephone application process, you accepted and agreed to the above terms</label><br /><br />
						<input type="radio" class="radio-button" name="agreeResp" id="agreeRespN" value="n" ${info.agreeResp != 'y' ? 'checked' : ''} />
						<label for="radio5"><b>Disagree: </b> During the telephone application process, you refused and disagreed to the above terms</label>
					</td>
				</tr>
			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="YourRights" name="previousLocation"/>
			</jsp:include>
		</div>
	</form>

</body>
</html>