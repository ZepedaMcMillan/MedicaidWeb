<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Incarceration</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<script src="js/Incarceration.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body>
<form id="IncarcerationForm" name="IncarcerationForm" method="post" action="PrivacyPolicy.jsp">
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
        <td class="disable-nav-bg"><a href="Incarceration.jsp"><b>Incarceration </b></a></td>
        <td class="disable-nav-bg"><a href="RenewalOfCoverage.jsp">Rights and Obligations  </a></td>
      </tr>
</table>
</div>
<div class = "content-bg-big">
<div align="left" class = "main-heading">
Incarceration
</div>
<br>
<br>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="60%" valign="middle" class="label-bg">Is anyone applying for health insurance on this application incarcerated (detained or jailed) </td>
<td width="40%" valign="middle" class="field-bg">
<input type="radio"  class="radio-button" name="IncarcerationRadio" id="IncarcerationRadioY" value="y" onclick = "fnIncarcerationRadio('y')"/>
<label for="radio5">Yes</label>
<input type="radio"  class="radio-button" name="IncarcerationRadio" id="IncarcerationRadioN" value="n" onclick = "fnIncarcerationRadio('n')"/>
<label for="radio5">No</label>
</td>
</tr>
<tr style="display:none;" id="IncarcerationYesRow">
<td width="60%" valign="middle" class="field-bg">Name<input name="IncarcerationName" type="text" class="width120" id="IncarcerationName" maxlength="50"/></td>
<td width="60%" valign="middle" class="field-bg">Is this person pending disposition of charges?
<input type="radio"  class="radio-button" name="pendingDisp" id="pendingDispY" value="y"/>
<label for="radio5">Yes</label>
<input type="radio"  class="radio-button" name="pendingDisp" id="pendingDispN" value="n"/>
<label for="radio5">No</label>
</td>
</tr>
</table>
<table style="margin: auto;" width = "80%">
<tr>
<td valign="top"><a href="VoterRegistration.jsp"></a><a href="index.jsp"><img src="images/exit-icon2.png" width="29" height="50" /></a></td>
<td align="right" valign="top">
<button type="button" name="previous-arrow" onclick = "window.location='CooperationWithChildSupport.jsp'">
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