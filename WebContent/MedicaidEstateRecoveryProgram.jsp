<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Medicaid Estate Recovery Program</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="MedicaidEstateRecoveryProgram">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<div class="content-bg-big">
			<div align="left" class="main-heading">Medicaid Estate Recovery Program</div>
			<br> <br>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td valign="middle" class="label-bg" width="60%">Medicaid recipients who
						are 55 years or older or inpatients of a medical facility may be
						responsible for repayment of Medicaid expenses paid for them.
						Recovery of these payments made from the Medicaid Program would be
						pursued from the estate of the recipient after their death or
						after the death of their surviving spouse. (See Form 6160-AF,
						Program Operation.)</td>
					<td valign="middle" class="field-bg" width="40%">
						<input type="radio" class="radio-button" name="agreeMedEstate" id="agreeMedEstateY" value="true" ${info.agreeMedEstate == 'true' ? 'checked' : ''} />
						<label for="radio5"><b>Agree:</b> During the telephone application process, you accepted and agreed to the above terms</label><br /><br />
						<input type="radio" class="radio-button" name="agreeMedEstate" id="agreeMedEstateN" value="false" ${info.agreeMedEstate != 'true' ? 'checked' : ''} />
						<label for="radio5"><b>Disagree:</b> During the telephone application process, you refused and disagreed to the above terms</label>
					</td>
				</tr>
			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="AuthorizedRep" name="previousLocation" />
			</jsp:include>
		</div>
	</form>
</body>
</html>