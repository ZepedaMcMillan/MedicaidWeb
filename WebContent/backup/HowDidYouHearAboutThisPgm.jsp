<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Referral Information</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js"></script>
<script src="js/Referral.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload = "fnReferralOnLoad()" onunload = "fnReferralOnUnLoad()">
<form id="MedEstateRecoveryForm" name="MedEstateRecoveryForm" method="post" action="NonDiscrimination.jsp">
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
Referral Information
</div>
<br>
<br>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td valign="middle" class="label-bg">How did you hear about this program? </td>
<td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="howDidYouHear" id="howDidYouHearcoveringKidsandFamily" value="coveringKidsandFamily" />
<label for="howDidYouHear">Covering Kids & Families</label><br />

<td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="howDidYouHear" id="howDidYouHearSchool" value="school" />
<label for="howDidYouHear">School</label><br />

<td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="howDidYouHear" id="howDidYouHearTribalResources" value="TribalResources" />
<label for="howDidYouHear">Tribal Resources</label><br />

<td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="howDidYouHear" id="howDidYouHearWIC" value="WIC" />
<label for="howDidYouHear">WIC</label><br />

<td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="howDidYouHear" id="howDidYouHearClinic" value="clinic" />
<label for="howDidYouHear">Clinic</label><br />

<td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="howDidYouHear" id="howDidYouHearFriendFamily" value="FriendFamily" />
<label for="howDidYouHear">Friend/Family</label><br />

<td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="howDidYouHear" id="howDidYouHearPositivelyKids" value="PositivelyKids" />
<label for="howDidYouHear">Positively Kids</label><br />

<td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="howDidYouHear" id="howDidYouHearOther" value="other" />
<label for="howDidYouHear">Other</label><input name="otherHowdidYouHear" type="text" class="width120" id="otherHowdidYouHear"/><br />
</tr>
</table>
<table style="margin: auto;" width = "80%">
<tr>
<td valign="top"><a href="VoterRegistration.jsp"></a><a href="index.jsp"><img src="images/exit-icon2.png" width="29" height="50" /></a></td>
<td align="right" valign="top">
<button type="button" name="previous-arrow" onclick = "window.location='ThirdPartyLiability.jsp'">
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