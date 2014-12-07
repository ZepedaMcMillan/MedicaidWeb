<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Voter Registration</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="VoterRegistration">
		<input type="hidden" name="customAction" id="customAction" value="" />		
		<div class="content-bg-big">
			<div align="left" class="main-heading">Voter Registration</div>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr id="voterRegistrationRow">
					<td width="60%" valign="middle" class="label-bg">Would you like
						to register to vote at this time?</td>
					<td valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="registeredToVote" id="registeredToVoteY" value="y" /><label for="registeredToVote">Yes</label>
						<input type="radio" class="radio-button" name="registeredToVote" id="registeredToVoteN" value="n" checked /> <label for="registeredToVote">No</label>
					</td>
				</tr>
			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="NonDiscrimination" name="previousLocation" />
			</jsp:include>
		</div>
	</form>

</body>
</html>