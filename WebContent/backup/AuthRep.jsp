<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Authorized Representatives</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/AuthRep.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body>
<form id="AuthRepForm" name="AuthRepForm" method="post" action="MedEstateRecoveryPgm.jsp">
<img src="images/dhhs_header.png" width="100%" border="0"/>
<div id="NavBar">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td class="disable-nav-bg"><a href="HouseHoldInformation.jsp">Household Information</a> </td>
        <td class="disable-nav-bg"><a href="HOHContactInfo.jsp">Contact Information</a></td>
        <td class="disable-nav-bg"><a href="GeneralInformation.jsp">General Information</a> </td>
        <td class="disable-nav-bg"><a href="TaxInfo.jsp">Tax Information</a></td>
        <td class="disable-nav-bg"><a href="OtherAsstInquiry.jsp">Other Assistance Inquiry</a></td>
        <td class="disable-nav-bg"><a href="MemberIncome.jsp">Member Income</a></td>
        <td class="disable-nav-bg"><a href="OtherIncome.jsp">Other Income</a></td>
        <td class="disable-nav-bg"><a href="Deductions.jsp">Deductions</a></td>
        <td class="disable-nav-bg"><a href="RaceEthnicity.jsp">Race & Ethnicity</a></td>
        <td class="disable-nav-bg"><a href="HOHHealthInsuranceInfo.jsp">Insurance From Jobs</a></td>
        <td class="disable-nav-bg"><a href="OtherHealthInsurance.jsp">Other Insurance</a></td>
        <td class="disable-nav-bg"><a href="AuthRep.jsp"><b>Authorized Representative</b></a></td>
        <td class="disable-nav-bg"><a href="Incarceration.jsp">Incarceration </a></td>
        <td class="disable-nav-bg"><a href="RenewalOfCoverage.jsp">Rights and Obligations  </a></td>
      </tr>
</table>
</div>
<div class = "content-bg-big">
<div align="left" class = "main-heading">
Authorized Representatives
</div>
<br>
<br>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id = "AuthRepTable">
<tr>
<td width="60%" valign="middle" class="label-bg">Do you want to name someone as your authorized representative?</td>
<td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="authRep" id="authRepY" value="y" onclick = "fnAuthRep('y')"/>
<label for="authRep">Yes</label>
<input type="radio"  class="radio-button" name="authRep" id="authRepN" value="n" onclick = "fnAuthRep('n')"/>
<label for="authRep">No</label></td>
</tr>
<tr id = "authRepButton" style="display: none">
<td>
<input type="button" id = "addauthRep" name = "addauthRep" value = "Add" onclick = "fnauthRep()" width = "30"/>
</td>
</tr>
<tr style="display:none;" id="authRepYRow">
<td>
<table>
<tr>
<td width="60%" valign="middle" class="label-bg">What is the name? </td>
<td width="40%" valign="middle" class="field-bg">
<input name="authRepName" type="text" class="width120" id="authRepName" maxlength="100"/>
</td>
</tr>
<tr>
<td width="60%" valign="middle" class="label-bg">What is the Address? </td>
<td width="40%" valign="middle" class="field-bg">
<input name="authRepAddress" type="text" class="width120" id="authRepAddress" maxlength="100"/><br />
<div class="small-label">Address</div><br \>

<input name="authRepcity" type="text" class="width120" id="authRepcity" maxlength="50" /><br />
<div class="small-label">City</div>

<input name="authRepstate" type="text" class="width120" id="authRepstate" maxlength="50" /><br />
<div class="small-label">State</div>

<input name="authRepzip" type="number" class="width120" id="authRepzip" maxlength="50"/><br />
<div class="small-label">Zip</div>
</td>
</tr>
<tr>
<td colspan="4" valign="middle" class="label-bg">By signing, you allow this person to sign your application, to get official information about this application and to act for you on all future matters with this agency </td>
</tr>
<tr id="agreeDisagree">
<td valign="middle" class="field-bg">
<input type="radio"  class="radio-button" name = "agreeAuthRep" id="agreeAuthRep" checked/>
<label for="radio5"> <b>Agree:</b> During the telephone application process, you accepted and agreed to the above terms</label> <br>
<input type="radio"  class="radio-button" name = "agreeAuthRep" id="disAgreeAuthRep"/>
<label for="radio5"> <b>Disagree:</b> During the telephone application process, you refused and disagreed to the above terms</label>
</td>
</tr>
</table>
</td>
</tr>
</table>

<table style="margin: auto;" width = "80%">
<tr>
<td valign="top"><a href="VoterRegistration.jsp"></a><a href="index.jsp"><img src="images/exit-icon2.png" width="29" height="50" /></a></td>
<td align="right" valign="top">
<button type="button" name="previous-arrow" onclick = "window.location='RenewalOfCoverage.jsp'">
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