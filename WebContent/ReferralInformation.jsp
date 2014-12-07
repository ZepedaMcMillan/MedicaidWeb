<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>How Did You Hear About This Program</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="ReferralInformation">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<div class="content-bg-big">
			<div align="left" class="main-heading">Referral Information</div>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td valign="middle" class="label-bg" width="60%">How did you hear about
						this program?</td>
					<td valign="middle" class="field-bg" width="40%">
						<input type="radio" class="radio-button" name="referralInfo" id="howDidYouHearcoveringKidsandFamily" value="Covering Kids & Families" ${info.referralInfo == 'Covering Kids & Families' || infor.referallInfo == null ? 'checked' : ''} />
						<label for="howDidYouHear">Covering Kids &amp; Families</label><br />
					
						<input type="radio" class="radio-button" name="referralInfo" id="howDidYouHearSchool" value="School" ${info.referralInfo == 'School' ? 'checked' : ''} />
						<label for="howDidYouHear">School</label><br />
					
						<input type="radio" class="radio-button" name="referralInfo" id="howDidYouHearTribalResources" value="Tribal Resources" ${info.referralInfo == 'Tribal Resources' ? 'checked' : ''} />
						<label for="howDidYouHear">Tribal Resources</label><br />
					
						<input type="radio" class="radio-button" name="referralInfo" id="howDidYouHearWIC" value="WIC" ${info.referralInfo == 'WIC' ? 'checked' : ''} />
						<label for="howDidYouHear">WIC</label><br />
					
						<input type="radio" class="radio-button" name="referralInfo" id="howDidYouHearClinic" value="Clinic" ${info.referralInfo == 'Clinic' ? 'checked' : ''} />
						<label for="howDidYouHear">Clinic</label><br />
					
						<input type="radio" class="radio-button" name="referralInfo" id="howDidYouHearFriendFamily" value="Friend/Family" ${info.referralInfo == 'Friend/Family' ? 'checked' : ''} />
						<label for="howDidYouHear">Friend/Family</label><br />
					
						<input type="radio" class="radio-button" name="referralInfo" id="howDidYouHearPositivelyKids" value="Positively Kids" ${info.referralInfo == 'Positively Kids' ? 'checked' : ''} />
						<label for="howDidYouHear">Positively Kids</label><br />
					
						<input type="radio" class="radio-button" name="referralInfo" id="howDidYouHearOther" value="Other" ${info.referralInfo == 'Other' ? 'checked' : ''} />
						<label for="howDidYouHear">Other</label>
						<input name="otherHowdidYouHear" type="text" class="width120" id="otherHowdidYouHear" />
					</td>
				</tr>
			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="ThirdPartyLiability" name="previousLocation" />
			</jsp:include>
		</div>
	</form>

</body>
</html>