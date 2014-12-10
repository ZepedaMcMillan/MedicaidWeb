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
	<form id="mainForm" name="mainForm" method="post" action="PrivacyPolicy">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<div class="content-bg-big">		
			<div align="left" class="main-heading">Privacy Policy</div>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td valign="middle" class="label-bg" width="60%">
						<p>We keep your information
						private as required by law. Your answers on this application will
						only be used to determine eligibility for health coverage or help
						paying for coverage. Nevada Health Link, Division of Welfare and
						Supportive Services and the Department of Health and Human
						Services will check your eligibility using our electronic
						databases and the databases of other federal agencies. If the
						information does not match, we may ask you to send us proof. We
						won't ask any questions about your medical history. Household
						members who don't want coverage won't be asked questions about
						citizenship or immigration status.</p>
						<p><b>IMPORTANT:</b> As part
						of the application process, we may need to retrieve your
						information from the Internal Revenue Service (IRS), Social
						Security, the Department of Homeland Security and/or a consumer
						reporting agency.</p>
						<p>We need this information
						to check your eligibility for coverage and help paying for
						coverage if you want it and to give you the best service possible.
						We may also check your information at a later time to make sure
						your information is up to date. We'll notify you if we find
						something has changed.</p>
						<p>I understand my
						information will be used and retrieved from data sources for this
						application. I have consent for all people I will list on the
						application that allows their information to be retrieved and used
						from the above-mentioned data sources.</p>
					</td>
					<td valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="agreePrivacy" id="agreePrivacyY" value="true" ${info.agreePrivacy == 'true' ? 'checked' : ''} />
						<label for="radio5"><b>Agree:</b> During the telephone application process, you accepted and agreed to the above terms</label><br/><br />
						<input type="radio" class="radio-button" name="agreePrivacy" id="agreePrivacyN" value="false" ${info.agreePrivacy != 'true' ? 'checked' : ''} /> 
						<label for="radio5"><b>Disagree:</b> During the telephone application process, you refused and disagreed to the above terms</label>
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