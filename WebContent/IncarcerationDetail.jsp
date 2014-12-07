<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Incarceration Detail</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="IncarcerationDetail">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<input type="hidden" name="itemIndex" id="itemIndex" value="${itemIndex}" />
		<div class="content-bg-big">		
			<div align="left" class="main-heading">Incarceration Detail</div>
			<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="60%" valign="middle" class="label-bg">Name of the person incarcerated</td>
					<td width="40%" valign="middle" class="field-bg">
						 <input name="personName" type="text" class="width120" id="personName" value="${info.personName}" />
					</td>
				</tr>
				<tr>
					<td class="label-bg">Is this person pending disposition of charges? </td>
					<td class="field-bg">
						<input type="radio" class="radio-button" name="dispositionPending" id="pendingDispY" value="y" ${info.dispositionPending == 'y' ? 'checked' : ''} /> 
						<label for="radio5">Yes</label> 
						<input type="radio" class="radio-button" name="dispositionPending" id="pendingDispN" value="n" ${info.dispositionPending != 'y' ? 'checked' : ''} /> 
						<label for="radio5">No</label>
					</td>
				</tr>
			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="Incarceration" name="previousLocation"/>
			</jsp:include>
		</div>
	</form>

</body>
</html>