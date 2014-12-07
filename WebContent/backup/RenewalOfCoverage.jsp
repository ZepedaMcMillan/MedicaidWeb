<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Renewal of Coverage</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/RenewalOfCoverage.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload = "fnRenewalOfCoverageOnLoad()" onunload = "fnRenewalOfCoverageOnUnLoad()">
<form id="RenewalOfCoverageForm" name="RenewalOfCoverageForm" method="post" action="AuthRep.jsp">
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
Renewal of Coverage (for APTC Households only)
</div>
<br>
<br>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">

<tr>
<td colspan = "2" valign="middle" class="label-bg">
To make it easier to determine my eligibility for help paying for health coverage in future years, I agree to allow Nevada Health Link to use my income data, including information from tax returns, for the next 5 years (the maximum number of years allowed).  The Nevada Health Link will send me a notice, let me make changes, and I can opt out at any time.
</td>
</tr>

<tr>
<td width="60%" valign="middle" class="label-bg">I give permission for tax return access at renewal time </td>
<td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="renewalPermission" id="renewalPermissionY" value="y" onclick = "fnRenewalPermission('y')"/>
<label for="renewalPermission">Yes</label><br>
<input type="radio"  class="radio-button" name="renewalPermission" id="renewalPermissionN" value="n" onclick = "fnRenewalPermission('n')"/>
<label for="renewalPermission">No, do not renew my eligibility for help paying health insurance</label></td>
</tr>
<tr style="display:none;" id="fnRenewalPermissionYRow">
<td width="60%" valign="middle" class="label-bg">How many years? </td>
<td width="40%" valign="middle" class="field-bg">
<select name="renewalHowMayYears" id="renewalHowMayYears">
<option value="0">0</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>

<br /></td>
</tr>

</table>

<table style="margin: auto;" width = "80%">
<tr>
<td valign="top"><a href="VoterRegistration.jsp"></a><a href="index.jsp"><img src="images/exit-icon2.png" width="29" height="50" /></a></td>
<td align="right" valign="top">
<button type="button" name="previous-arrow" onclick = "window.location='OtherHealthInsurance.jsp'">
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