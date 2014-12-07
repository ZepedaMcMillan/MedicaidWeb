<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Cooperation with Child Support Enforcement</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js"></script>
<script src="js/CooperationWithChildSupport.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload = "fnCoOpChildSupportOnLoad()" onunload = "fnCoOpChildSupportOnUnLoad()">
<form id="CooperatiobChildSupportForm" name="CooperatiobChildSupport" method="post" action="Incarceration.jsp">
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
Cooperation with Child Support Enforcement
</div>
<br>
<br>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td colspan = "2" valign="middle" class="label-bg">I know I'll be required to cooperate with the agency to collect medical support and establish paternity from an absent parent. If I think that cooperating to collect medical support will harm me or my children, I can tell the agency and I may not have to cooperate. </td>
</tr>
<tr id="agreeDisagree">
<td valign="middle" class="field-bg">
<input type="radio"  class="radio-button" name = "agreeCoopWithChildSupport" id="agreeCoopWithChildSupport"/>
<label for="radio5"> <b>Agree:</b> During the telephone application process, you accepted and agreed to the above terms</label><br>
<input type="radio"  class="radio-button" name = "agreeCoopWithChildSupport" id="disAgreeCoopWithChildSupport"/>
<label for="radio5"> <b>Disagree:</b> During the telephone application process, you refused and disagreed to the above terms</label>
</td>
</tr>
<tr>
<td width="60%" valign="middle" class="label-bg">Does any child on this application have a parent living outside of the home? </td>
<td width="40%" valign="middle" class="field-bg">
<input type="radio"  class="radio-button" name="parentLivingOutside" id="parentLivingOutsideY" value="y"/>
<label for="radio5">Yes</label>
<input type="radio"  class="radio-button" name="parentLivingOutside" id="parentLivingOutsideN" value="n"/>
<label for="radio5">No</label>
</td>
</tr>
</table>
<table style="margin: auto;" width = "80%">
<tr>
<td valign="top"><a href="VoterRegistration.jsp"></a><a href="index.jsp"><img src="images/exit-icon2.png" width="29" height="50" /></a></td>
<td align="right" valign="top">
<button type="button" name="previous-arrow" onclick = "window.location='ReleaseOfInformation.jsp'">
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