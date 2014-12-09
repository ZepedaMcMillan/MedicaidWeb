<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Other Health Insurance Detail</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="OtherHealthInsuranceDetail">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<input type="hidden" name="itemIndex" id="itemIndex" value="${itemIndex}" />
		<div class="content-bg-big">		
			<div align="left" class="main-heading">Other Health Insurance Information</div>
			<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="60%" valign="middle" class="label-bg">Name</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="name" type="text" class="width120" id="name" value="${info.name}" />
					</td>
				</tr>
				<tr>
					<td width="60%" valign="middle" class="label-bg">Type of Insurance</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="insuranceType" type="text" class="width120" id="insuranceType" value="${info.insuranceType}" />
					</td>
				</tr>
				<tr>
					<td width="60%" valign="middle" class="label-bg">Name of Plan</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="planName" type="text" class="width120" id="planName" value="${info.planName}" />
					</td>
				</tr>
				<tr>
					<td width="60%" valign="middle" class="label-bg">Policy Number</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="policyNumber" type="text" class="width120" id="policyNumber" value="${info.policyNumber}" />
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