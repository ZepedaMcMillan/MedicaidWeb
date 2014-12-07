<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Other Income</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/OtherIncome.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload="fnLoadOtherIncome()" onunload = "fnOtherIncomeOnUnLoad()">
<form id="OtherIncomeForm" name="OtherIncomeForm" method="post" action="Deductions.jsp">
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
        <td class="disable-nav-bg"><a href="OtherIncome.jsp"><b>Other Income </b></a></td>
        <td class="disable-nav-bg">Deductions </td>
        <td class="disable-nav-bg">Race & Ethnicity </td>
        <td class="disable-nav-bg">Insurance From Jobs </td>
        <td class="disable-nav-bg">Other Insurance </td>
        <td class="disable-nav-bg">Authorized Representative </td>
        <td class="disable-nav-bg">Incarceration </td>
        <td class="disable-nav-bg">Rights and Obligations </td>
      </tr>
</table>
</div>
<table align = "center" width="70%" id="OtherIncomeMainOuterTable">
<tr>
<td id="OtherIncomeMainOuterTableCell0">
<div class = "content-bg-big" id="OtherIncomeDivHOH">
<div align="left" class = "main-heading" id="OtherIncomeMainHeading">
Other Income
</div>
<br>
<br>
<div id="OtherIncomeMainName">
&emsp;&emsp;<span id="OtherIncomeHOHName" style="font-weight: bold; color: black; font-size: 15pt"></span>
</div>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id="OtherIncomeHohTable">
<tr>
<td width="60%" valign="middle" class="label-bg">Do you receive any other type of income? Note: You don't need to tell us about child support or veteran's disability payments.  Certain money received may or may not be counted for Medicaid and Nevada Check-Up.  Let us know if any money received is considered tribal income. </td>
<td width="40%" valign="middle" class="field-bg">
<input type="radio"  class="radio-button" name="otherIncomeBigQuestion" id="otherIncomeBigQuestionY" value="y" onclick = "fnOtherIncomeBigQuestion('y')"/>
<label for="radio5">Yes</label>
<input type="radio"  class="radio-button" name="otherIncomeBigQuestion" id="otherIncomeBigQuestionN" value="n" onclick = "fnOtherIncomeBigQuestion('n')" checked/>
<label for="radio5">No</label>
</td>
</tr>
<tr id="otherIncomeBigQYesRow" style="display: none">
<td>
<table>
<thead>
<tr>
<th>
Type
</th>
<th>
Amount
</th>
<th>
How Often?
</th>
<th>
Tribal Income?
</th>
</tr>
</thead>
<tr>
<td>
Unemployment
</td>
<td>
<input type = "text" id = "unemploymentAmt" name = "unemploymentAmt">
</td>
<td>
<input type = "text" id = "unemploymentHowOften" name = "unemploymentHowOften">
</td>
<td>
&emsp;&emsp;
</td>
</tr>
<tr>
<td>
Retirement
</td>
<td>
<input type = "text" id = "retirementAmt" name = "retirementAmt">
</td>
<td>
<input type = "text" id = "retirementHowOften" name = "retirementHowOften">
</td>
<td>
&emsp;&emsp;
</td>
</tr>
<tr>
<td>
Pensions
</td>
<td>
<input type = "text" id = "pensionsAmt" name = "pensionsAmt">
</td>
<td>
<input type = "text" id = "pensionsHowOften" name = "pensionsHowOften">
</td>
<td>
&emsp;&emsp;
</td>
</tr>
<tr>
<td>
Social Security (RSDI) Benefits
</td>
<td>
<input type = "text" id = "ssBenefitsAmt" name = "ssBenefitsAmt">
</td>
<td>
<input type = "text" id = "ssBenefitsHowOften" name = "ssBenefitsHowOften">
</td>
<td>
&emsp;&emsp;
</td>
</tr>
<tr>
<td>
Interest/Dividends
</td>
<td>
<input type = "text" id = "intDividentsAmt" name = "intDividentsAmt">
</td>
<td>
<input type = "text" id = "intDividentsHowOften" name = "intDividentsHowOften">
</td>
<td>
<select id = "intDividents">
  <option value="intDividentsY">Yes</option>
  <option value="intDividentsN">No</option>
</select>
</td>
</tr>
<tr>
<td>
Annuities
</td>
<td>
<input type = "text" id = "annuitiesAmt" name = "annuitiesAmt">
</td>
<td>
<input type = "text" id = "annuitiesHowOften" name = "annuitiesHowOften">
</td>
<td>
<select id = "annuities">
  <option value="annuitiesY">Yes</option>
  <option value="annuitiesN">No</option>
</select>
</td>
</tr>
<tr>
<td>
Rental or Royalty Income
</td>
<td>
<input type = "text" id = "rentalRoyaltyAmt" name = "rentalRoyaltyAmt">
</td>
<td>
<input type = "text" id = "rentalRoyaltyHowOften" name = "rentalRoyaltyHowOften">
</td>
<td>
<select id = "rentalRoyalty">
  <option value="rentalRoyaltyY">Yes</option>
  <option value="rentalRoyaltyN">No</option>
</select>
</td>
</tr>
<tr>
<td>
Capital Gains
</td>
<td>
<input type = "text" id = "capGainsAmt" name = "capGainsAmt">
</td>
<td>
<input type = "text" id = "capGainsHowOften" name = "capGainsHowOften">
</td>
<td>
<select id = "capGains">
  <option value="capGainsY">Yes</option>
  <option value="capGainsN">No</option>
</select>
</td>
</tr>
<tr>
<td>
Farming or Fishing Income
</td>
<td>
<input type = "text" id = "farmFishAmt" name = "farmFishAmt">
</td>
<td>
<input type = "text" id = "farmFishHowOften" name = "farmFishHowOften">
</td>
<td>
<select id = "farmFishHow">
  <option value="farmFishHowY">Yes</option>
  <option value="farmFishHowN">No</option>
</select>
</td>
</tr>
<tr>
<td>
Alimony
</td>
<td>
<input type = "text" id = "alimonyAmt" name = "alimonyAmt">
</td>
<td>
<input type = "text" id = "alimonyHowOften" name = "alimonyHowOften">
</td>
<td>
&emsp;&emsp;
</td>
</tr>
<tr>
<td>
Scholarship Grants
</td>
<td>
<input type = "text" id = "scholarshipAmt" name = "scholarshipAmt">
</td>
<td>
<input type = "text" id = "scholarshipHowOften" name = "scholarshipHowOften">
</td>
<td>
<select id = "scholarship">
  <option value="scholarshipY">Yes</option>
  <option value="scholarshipN">No</option>
</select>
</td>
</tr>
<tr>
<td>
Cash Advances
</td>
<td>
<input type = "text" id = "cashAdvAmt" name = "cashAdvAmt">
</td>
<td>
<input type = "text" id = "cashAdvHowOften" name = "cashAdvHowOften">
</td>
<td>
<select id = "cashAdv">
  <option value="cashAdvY">Yes</option>
  <option value="cashAdvN">No</option>
</select>
</td>
</tr>
<tr>
<td>
Gambling Winnings
</td>
<td>
<input type = "text" id = "gamblingWinAmt" name = "gamblingWinAmt">
</td>
<td>
<input type = "text" id = "gamblingWinHowOften" name = "gamblingWinHowOften">
</td>
<td>
<select id = "gamblingWin">
  <option value="gamblingWinY">Yes</option>
  <option value="gamblingWinN">No</option>
</select>
</td>
</tr>
<tr>
<td>
Other <input name="otherIncomeOther" type="text" class="width120" id="otherIncomeOther"/>
</td>
<td>
<input type = "text" id = "otherAmt" name = "otherAmt">
</td>
<td>
<input type = "text" id = "otherHowOften" name = "otherHowOften">
</td>
<td>
<select id = "other">
  <option value="otherY">Yes</option>
  <option value="otherN">No</option>
</select>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td width="60%" valign="middle" class="label-bg">Is the income you listed steady from month to month? </td>
<td width="40%" valign="middle" class="field-bg">
<input type="radio"  class="radio-button" name="steadyIncome" id="steadyIncomeY" value="y" onclick = "fnSteadyIncome('y')"/>
<label for="radio5">Yes</label>
<input type="radio"  class="radio-button" name="steadyIncome" id="steadyIncomeN" value="n" onclick = "fnSteadyIncome('n')" checked/>
<label for="radio5">No</label>
</td>
</tr>
<tr id="steadyIncomeNoRow" style="display: none">
<td valign="middle" class="label-bg">Total annual income expected this year </td>
<td valign="middle" class="field-bg"><input type="text" name="expIncomeThisYear" class="width40" id="expIncomeThisYear" /></td>
<td valign="middle" class="label-bg">Total annual income expected next year </td>
<td valign="middle" class="field-bg"><input type="text" name="expIncomeNextYear" class="width40" id="expIncomeNextYear" /></td>
</tr>
</table>
<table style="margin: auto;" width = "80%">
<tr>
<td valign="top"><a href="VoterRegistration.jsp"></a><a href="index.jsp"><img src="images/exit-icon2.png" width="29" height="50" /></a></td>
<td align="right" valign="top">
<button type="button" name="previous-arrow" onclick = "window.location='MemberIncome.jsp'">
<img src="images/perviouse-arrow2.png">
</button>
<button type="submit" name="next-arrow">
<img src="images/next-arrow.png">
</button>
<br /></td>
</tr>
</table>
</div>
</td>
<td>
<div class = "membersWithAvatarDiv">
<div align="left" class = "main-heading">
Household Composition
</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="memebersWithAvatar">
</table>
</div>
</td>
</tr>
</table>
</form>
</body>
</html>