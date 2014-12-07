<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Authorized Representatives</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="HealthPlan">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<div class="content-bg-big">		
			<div align="left" class="main-heading">Health Plan</div>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td valign="middle" class="label-bg" width="60%"><p>Families who live in
						urban Washoe County or urban Clark County are covered by a managed
						care organization (MCO). You are being asked to choose one of the
						following health plans. If you do not indicate a health plan
						preference on your application, we will choose a plan for you.
						Your choice of health plan does not guarantee acceptance into the
						Nevada Medicaid or Nevada Check Up program. We might not honor
						your choice of plans if you or any family members have been
						enrolled in one of our current managed care organizations. Once
						enrolled, families will receive a member handbook explaining the
						health plan benefits and can contact the numbers below for
						information regarding the health plans.</p>
						<p><b>NOTE:</b> If you do
						not choose a health plan preference, we will choose a plan for
						you.</p>
						<p>For families living in
						the fee-for-service benefit area, services may be obtained from
						any Nevada Medicaid provider. If you need assistance in locating a
						provider, please call your local Medicaid district office:<br />
						Carson City (775) 684-3651 <br> Reno (775) 687-1900 <br />
						Las Vegas (702) 668-4200 <br> Elko (775) 753-1191<br /></p>
					</td>
					<td valign="middle" class="field-bg" width="40%">
						Please choose a health plan <br /> 
						<input type="radio" class="radio-button" name="selectedHealthPlan" id="selectedHealthPlanA" value="Amerigroup" ${info.selectedHealthPlan != 'Health Plan of Nevada' ? 'checked' : ''} />
						<label for="">a. Amerigroup: 1-800-600-4441, www.amerigroup.com</label><br /><br />
						<input type="radio" class="radio-button" name="selectedHealthPlan" id="selectedHealthPlanB" value="Health Plan of Nevada" ${info.selectedHealthPlan == 'Health Plan of Nevada' ? 'checked' : ''} />
						<label for="">b. Health Plan of Nevada: 1-800-962-8074, www.healthplanofnevada.com</label>
					</td>
				</tr>
			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="PrivacyPolicy" name="previousLocation"/>
			</jsp:include>
		</div>
	</form>

</body>
</html>