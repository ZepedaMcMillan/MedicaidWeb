<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Other Health Insurance Information</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/OtherHealthInsurance.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload = "fnHouseHoldInfoOnLoad()" onunload = "fnHouseHoldInfoUnLoad()">
<form id="HOHContactInformationForm" name="HOHContactInformationForm" method="post" action="RenewalOfCoverage.jsp">
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
        <td class="disable-nav-bg"><a href="OtherHealthInsurance.jsp"><b>Other Insurance </b></a></td>
        <td class="disable-nav-bg">Authorized Representative </td>
        <td class="disable-nav-bg">Incarceration </td>
        <td class="disable-nav-bg">Rights and Obligations </td>
      </tr>
</table>
</div>
<div class = "content-bg-big">
<div align="left" class = "main-heading">
Other Health Insurance Information
</div>
<br>
<br>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id = "OtherHITable">
<tr>
<td width="60%" valign="middle" class="label-bg">Does anyone have other health insurance, including Veterans, Medicaid/Nevada Check-Up, Medicare, COBRA, Private, or other Retiree Health Plan? </td>
<td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="otherHealthInsurance" id="otherHealthInsuranceY" value="y" onclick = "fnOtherHealthInsurance('y')"/>
<label for="otherHealthInsurance">Yes</label>
<input type="radio"  class="radio-button" name="otherHealthInsurance" id="otherHealthInsuranceN" value="n" onclick = "fnOtherHealthInsurance('n')" checked/>
<label for="otherHealthInsurance">No</label></td>
</tr>
<tr id = "otherHealthInsuranceButton" style="display: none">
<td>
<input type="button" id = "addOtherHI" name = "addOtherHI" value = "Add" onclick = "fnAddOtherHI()" width = "50"/>
</td>
</tr>
<tr style="display:none;" id="otherHealthInsuranceYRow">
<td>
<table>
<tr>
<td width="60%" valign="middle" class="label-bg">Name </td>
<td width="40%" valign="middle" class="field-bg"><input name="otherHIName" type="text" class="width120" id="otherHIName" maxlength="50"/><br /></td>
</tr>
<tr>
<td width="60%" valign="middle" class="label-bg">Type of Insurance </td>
<td width="40%" valign="middle" class="field-bg"><input name="otherHIType" type="text" class="width120" id="otherHIType" maxlength="50"/><br /></td>
</tr>
<tr>
<td width="60%" valign="middle" class="label-bg">Name of Plan </td>
<td width="40%" valign="middle" class="field-bg"><input name="otherHIPlanName" type="text" class="width120" id="otherHIPlanName" maxlength="50"/><br /></td>
</tr>
<tr>
<td width="60%" valign="middle" class="label-bg">Policy Number </td>
<td width="40%" valign="middle" class="field-bg"><input name="otherHIPolicyNumb" type="text" class="width120" id="otherHIPolicyNumb" maxlength="50"/><br /></td>
</tr>
</table>
</td>
</tr>
</table>
<table style="margin: auto;" width = "80%">
<tr>
<td valign="top"><a href="VoterRegistration.jsp"></a><a href="index.jsp"><img src="images/exit-icon2.png" width="29" height="50" /></a></td>
<td align="right" valign="top">
<button type="button" name="previous-arrow" onclick = "window.location='HOHHealthInsuranceInfo.jsp'">
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