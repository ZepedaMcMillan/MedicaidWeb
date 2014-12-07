<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Non-Discrimination</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="NonDiscrimination">
		<input type="hidden" name="customAction" id="customAction" value="" />		
		<div class="content-bg-big">
			<div align="left" class="main-heading">Non Discrimination</div>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td valign="middle" class="label-bg">Following federal law,
						discrimination is not permitted on the basis of race, color,
						national origin, sex, age, sexual orientation, gender identity or
						disability. You can file a complaint of discrimination by visiting
						http://www.hhs.gov/ocr/office/file; or you may write: HHS,
						Director, Office for Civil Rights, Room 506-F, 200 Independence
						Ave, S.W. Washington, D.C. 20201; or call (202) 619-0403 (voice) or
						(202) 619-3257(TTY).</td>
				</tr>
			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="ReferralInformation" name="previousLocation" />
			</jsp:include>
		</div>
	</form>

</body>
</html>