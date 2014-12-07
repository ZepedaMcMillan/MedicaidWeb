<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Reviews And Investigations</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="ReviewsAndInvestigations">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<div class="content-bg-big">
			<div align="left" class="main-heading">Reviews and Investigations</div>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td valign="middle" class="label-bg" width="60%"><p>By signing this
						application, you are authorizing the Department of Health and
						Human Services to make investigations concerning you, other
						members of your household and/or your child(ren)'s legal or
						natural parent(s) that may be necessary to determine eligibility
						for benefits you or your household receives under programs
						administered by the DWSS and Nevada Health Link. Information
						provided to the agency may be verified or investigated by federal,
						state and local officials including quality control staff.</p>
						<p>You must cooperate in the
						investigation or your benefits may be denied or terminated. If you
						knowingly make a statement which is false or misleading; provide
						documents that have been altered; or conceal or withhold
						information that is necessary for the agency to make an accurate
						determination of the benefits for which you are eligible your
						benefits may be denied, terminated or reduced. If you receive
						benefits for which you are not entitled, you must repay the agency
						for all money, services, and benefits you were not entitled to
						receive. You may also be disqualified from receiving future
						benefits and be criminally prosecuted or penalized according to
						state and federal law.</p>
					<td valign="middle" class="field-bg" width="40%">
						<input type="radio" class="radio-button" name="agreeReviews" id="agreeReviewsY" value="y" ${info.agreeReviews == 'y' ? 'checked' : ''} />
						<label for="radio5"><b>Agree: </b> During the telephone application process, you accepted and agreed to the above terms</label><br /><br />
						<input type="radio" class="radio-button" name="agreeReviews" id="agreeReviewsN" value="n" ${info.agreeReviews != 'y' ? 'checked' : ''} />
						<label for="radio5"><b>Disagree: </b> During the telephone application process, you refused and disagreed to the above terms</label>
					</td>
				</tr>
			</table>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="VoterRegistration" name="previousLocation" />
			</jsp:include>
		</div>
	</form>
</body>
</html>