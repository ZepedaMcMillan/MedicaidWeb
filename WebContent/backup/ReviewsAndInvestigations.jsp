<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Reviews and Investigations</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js"></script>
<script src="js/ReviewsAndInvestigations.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload = "fnReviewsAndInvestigationsOnLoad()" onunload = "fnReviewsAndInvestigationsOnUnLoad()">
<form id="ReviewsAndInvestigationsForm" name="ReviewsAndInvestigationsForm" method="post" action="YourRights.jsp">
<img src="images/dhhs_header.png" width="100%" border="0"/>
<div id="NavBar">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
       <tr>
        <td class="disable-nav-bg"><a href="HouseHoldInformation.jsp">Household Information</a> </td>
        <td class="disable-nav-bg"><a href="HOHContactInfo.jsp">Contact Information</a></td>
        <td class="disable-nav-bg"><a href="GeneralInformation.jsp">General Information</a> </td>
        <td class="disable-nav-bg"><a href="TaxInfo.jsp">Tax Information</a></td>
        <td class="disable-nav-bg"><a href="OtherAsstInquiry.jsp">Other Assistance Inquiry</a></td>
        <td class="disable-nav-bg"><a href="MemberIncome.jsp">Member Income </a></td>
        <td class="disable-nav-bg"><a href="OtherIncome.jsp">Other Income </a></td>
        <td class="disable-nav-bg"><a href="Deductions.jsp">Deductions </a></td>
        <td class="disable-nav-bg"><a href="RaceEthnicity.jsp">Race & Ethnicity </a></td>
        <td class="disable-nav-bg"><a href="HOHHealthInsuranceInfo.jsp">Insurance From Jobs </a></td>
        <td class="disable-nav-bg"><a href="OtherHealthInsurance.jsp">Other Insurance </a></td>
        <td class="disable-nav-bg"><a href="AuthRep.jsp">Authorized Representative  </a></td>
        <td class="disable-nav-bg"><a href="Incarceration.jsp">Incarceration </a></td>
        <td class="disable-nav-bg"><a href="RenewalOfCoverage.jsp"><b>Rights and Obligations </b> </a></td>
      </tr>
</table>
</div>
<div class = "content-bg-big">
<div align="left" class = "main-heading">
Reviews and Investigations
</div>
<br>
<br>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td valign="middle" class="label-bg">By signing this application, you are authorizing the Department of Health and Human Services to make investigations concerning you, other members of your household and/or your child(ren)'s legal or natural parent(s) that may be necessary to determine eligibility for benefits you or your household receives under programs administered by the DWSS and Nevada Health Link. Information provided to the agency may be verified or investigated by federal, state and local officials including quality control staff. </td>
</tr>
<tr>
<td valign="middle" class="label-bg">You must cooperate in the investigation or your benefits may be denied or terminated. If you knowingly make a statement which is false or misleading; provide documents that have been altered; or conceal or withhold information that is necessary for the agency to make an accurate determination of the benefits for which you are eligible your benefits may be denied, terminated or reduced. If you receive benefits for which you are not entitled, you must repay the agency for all money, services, and benefits you were not entitled to receive.  You may also be disqualified from receiving future benefits and be criminally prosecuted or penalized according to state and federal law. </td>
</tr>
<tr id="agreeDisagree">
<td valign="middle" class="field-bg">
<input type="radio"  class="radio-button" name = "agreeReviewsAndInvestigations" id="agreeReviewsAndInvestigations"/>
<label for="radio5"> <b>Agree: </b> During the telephone application process, you accepted and agreed to the above terms</label><br>
<input type="radio"  class="radio-button" name = "agreeReviewsAndInvestigations" id="disAgreeReviewsAndInvestigations"/>
<label for="radio5"> <b>Disagree: </b> During the telephone application process, you refused and disagreed to the above terms</label>
</td>
</tr>
</table>
<table style="margin: auto;" width = "80%">
<tr>
<td valign="top"><a href="VoterRegistration.jsp"></a><a href="index.jsp"><img src="images/exit-icon2.png" width="29" height="50" /></a></td>
<td align="right" valign="top">
<button type="button" name="previous-arrow" onclick = "window.location='VoterRegistration.jsp'">
<img src="images/perviouse-arrow2.png">
</button>
<button type="submit" name="next-arrow">
<img src="images/next-arrow.png">
</button>
<br /></td>
</tr>
</table>
</div>
</form>
</body>
</html>