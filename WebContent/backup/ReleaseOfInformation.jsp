<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Release of Information</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js"></script>
<script src="js/ReleaseOfInformation.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload = "fnRelofInfoOnLoad()" onunload = "fnRelofInfoOnUnLoad()">
<form id="ReleaseofInformationForm" name="ReleaseofInformationForm" method="post" action="CooperationWithChildSupport.jsp">
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
Release of Information
</div>
<br>
<br>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td valign="middle" class="label-bg">I hereby authorize and consent to the release of all information concerning me or my household members to the Department of Health and Human Services by the holder of the information such as, but not limited to, wage information, information made confidential by law, as well as patient information privileged under NRS 49.225, or any other provision of law.  I hereby release the holder of the information from liability, if any, resulting from the release (disclosure) of the required information. </td>
</tr>
<tr>
<td valign="middle" class="label-bg">If I am 60 years of age or older, I hereby consent to the disclosure of my identity and waive my right as an older person to have my identity kept confidential.  I hereby release the holder of information from liability, if any, resulting from the disclosure of the required information. </td>
</tr>
<tr id="agreeDisagree">
<td valign="middle" class="field-bg">
<input type="radio"  class="radio-button" name = "agreeReleaseOfInfo" id="agreeReleaseOfInfo"/>
<label for="radio5"> <b>Agree: </b> During the telephone application process, you accepted and agreed to the above terms</label><br>
<input type="radio"  class="radio-button" name = "agreeReleaseOfInfo" id="disAgreeReleaseOfInfo"/>
<label for="radio5"> <b>Disagree: </b> During the telephone application process, you refused and disagreed to the above terms</label>
</td>
</tr>
</table>
<table style="margin: auto;" width = "80%">
<tr>
<td valign="top"><a href="VoterRegistration.jsp"></a><a href="index.jsp"><img src="images/exit-icon2.png" width="29" height="50" /></a></td>
<td align="right" valign="top">
<button type="button" name="previous-arrow" onclick = "window.location='YourResponsibilities.jsp'">
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