<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Third Party Liability</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js"></script>
<script src="js/ThirdPartyLiability.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload = "fnThirdPartyLiabilityOnLoad()" onunload = "fnThirdPartyLiabilityOnUnLoad()">
<form id="ThirdPartyLiabForm" name="ThirdPartyLiabForm" method="post" action="HowDidYouHearAboutThisPgm.jsp">
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
Third Party Liability
</div>
<br>
<br>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td valign="middle" class="label-bg">I understand the following is an eligibility requirement to receive Medicaid benefits: </td>
</tr>
<tr>
<td valign="middle" class="label-bg">1)   	If anyone on this application receives Medicaid benefits, I give the Medicaid agency the right to pursue 	and get any money from other health insurance, insurance, legal settlements, and any other third party that may be liable for the medical services paid by Medicaid; and </td>
</tr>
<tr>
<td valign="middle" class="label-bg">2)  	I give the Medicaid agency the right to pursue and get child and medical support from a spouse or a parent; and  </td>
</tr>
<tr>
<td valign="middle" class="label-bg">3) 	I agree my household members will cooperate with the Medicaid agency to obtain any money from insurance companies, legal settlements and third parties and will give DHHS notice of any settlements or legal action. </td>
</tr>
<tr id="agreeDisagree">
<td valign="middle" class="field-bg">
<input type="radio"  class="radio-button" name = "agreeThirdParty" id="agreeThirdParty"/>
<label for="radio5"> <b>Agree: </b> During the telephone application process, you accepted and agreed to the above terms</label><br>
<input type="radio"  class="radio-button" name = "agreeThirdParty" id="disAgreeThirdParty"/>
<label for="radio5"> <b>Disagree: </b> During the telephone application process, you refused and disagreed to the above terms</label>
</td>
</tr>
</table>
<table style="margin: auto;" width = "80%">
<tr>
<td valign="top"><a href="VoterRegistration.jsp"></a><a href="index.jsp"><img src="images/exit-icon2.png" width="29" height="50" /></a></td>
<td align="right" valign="top">
<button type="button" name="previous-arrow" onclick = "window.location='MedEstateRecoveryPgm.jsp'">
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