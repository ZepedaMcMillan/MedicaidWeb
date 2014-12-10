<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Read and Sign Application</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="ReadAndSign">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<div class="content-bg-big">		
			<div align="left" class="main-heading">Read and Sign Application</div>
			<br> <br>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td valign="middle" class="label-bg" width="60%">
						<p><input type="checkbox" class="radio-button" name="understand" id="understand" value="true" ${info.understand != 'true' ? '' : 'checked'} />
						<label for="understand">I understand the information on this application was provided over
						the phone to an employee of the Division of Welfare and Supportive
						Services (DWSS). I am responsible for reviewing the information on
						this document and verifying the information is accurate. If I find
						a discrepancy, I will notify DWSS immediately.</label></p>

						<p><input type="checkbox" class="radio-button" name="verballySigning" id="verballySigning" value="true" ${info.verballySigning != 'true' ? '' : 'checked'} />
						<label for="verballySigning">I'm verbally signing this application under penalty of perjury, which 
						means I've provided true answers to all of the questions to the best of my knowledge. 
						I know that I may be subject to penalties under federal law if I intentionally provide 
						false or untrue information.</label></p>

						<p><input type="checkbox" class="radio-button" name="swear" id="swear" value="true" ${info.swear != 'true' ? '' : 'checked'} />
						<label for="swear">I swear I have honestly reported the citizenship status of myself and anyone I am
						applying for.</label></p>
					</td>
					<td valign="middle" class="field-bg" width="40%">
						<input type="radio" class="radio-button" name="agreeReadSign" id="agreeReadSignY" value="true" ${info.agreeReadSign == 'true' ? 'checked' : ''} />
						<label for="radio5"><b>Agree:</b> During the telephone application process, you accepted and agreed
							to the above terms</label><br /><br />
						<input type="radio" class="radio-button" name="agreeReadSign" id="agreeReadSignN" value="false" ${info.agreeReadSign != 'true' ? 'checked' : ''} />
						<label for="radio5"><b>Disagree: </b> During the telephone application process, you refused and disagreed to the above terms</label>
					</td>
				</tr>
			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="HealthPlan" name="previousLocation"/>
			</jsp:include>
		</div>
	</form>

</body>
</html>