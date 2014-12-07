<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Deductions</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/Deductions.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload = "fnLoadDeductions()" onunload = "fnDeductionsOnUnLoad()">
<form id="DeductionsForm" name="DeductionsForm" method="post" action="RaceEthnicity.jsp">
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
        <td class="disable-nav-bg"><a href="Deductions.jsp"><b>Deductions </b></a></td>
        <td class="disable-nav-bg">Race & Ethnicity </td>
        <td class="disable-nav-bg">Insurance From Jobs </td>
        <td class="disable-nav-bg">Other Insurance </td>
        <td class="disable-nav-bg">Authorized Representative </td>
        <td class="disable-nav-bg">Incarceration </td>
        <td class="disable-nav-bg">Rights and Obligations </td>
      </tr>
</table>
</div>
<table align = "center" width="70%" id="DeductionsMainOuterTable">
<tr>
<td id="DeductionsMainOuterTableCell0">
<div class = "content-bg-big" id="DeductionsDivHOH">
<div align="left" class = "main-heading" id="DeductionsMainHeading">
Deductions
</div>
<br>
<br>
<div id="DeductionsMainName">
&emsp;&emsp;<span id="DeductionsHOHName" style="font-weight: bold; color: black; font-size: 15pt"></span>
</div>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id="DeductionsHohTable">
<tr>
<td width="60%" valign="middle" class="label-bg">Do you have any deductions that can be reported on a federal income tax return? If you pay for certain things that can be deducted on a federal income tax return, telling us about them could reduce your countable income.  Note:  You shouldn't include a cost that you already considered in your answer to net self-employment. </td>
<td width="40%" valign="middle" class="field-bg">
<input type="radio"  class="radio-button" name="deductionsBiqQuestion" id="deductionsBiqQuestionY" value="y" onclick = "fnDeductionsBiqQuestion('y')"/>
<label for="radio5">Yes</label>
<input type="radio"  class="radio-button" name="deductionsBiqQuestion" id="deductionsBiqQuestionN" value="n" onclick = "fnDeductionsBiqQuestion('n')" checked/>
<label for="radio5">No</label>
</td>
</tr>
<tr style="display:none;" id="deductionsBiqQuestionYesRow">
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
</tr>
</thead>
<tr>
<td>
Educator expenses
</td>
<td>
<input type = "text" id = "educatorExpensesAmt" name = "educatorExpensesAmt">
</td>
<td>
<input type = "text" id = "educatorExpensesHowOften" name = "educatorExpensesHowOften">
</td>
</tr>
<tr>
<td>
Health savings account
</td>
<td>
<input type = "text" id = "healthSavingsAmt" name = "healthSavingsAmt">
</td>
<td>
<input type = "text" id = "healthSavingsHowOften" name = "healthSavingsHowOften">
</td>
</tr>
<tr>
<td>
Moving expenses
</td>
<td>
<input type = "text" id = "movingExpAmt" name = "movingExpAmt">
</td>
<td>
<input type = "text" id = "movingExpHowOften" name = "movingExpHowOften">
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
</tr>
<tr>
<td>
IRA deductions
</td>
<td>
<input type = "text" id = "IRADeducAmt" name = "IRADeducAmt">
</td>
<td>
<input type = "text" id = "IRADeducHowOften" name = "IRADeducHowOften">
</td>
</tr>
<tr>
<td>
Business expenses of reservists, performing artists, and fee-basis government officials
</td>
<td>
<input type = "text" id = "businessExpAmt" name = "businessExpAmt">
</td>
<td>
<input type = "text" id = "businessExpHowOften" name = "businessExpHowOften">
</td>
</tr>
<tr>
<td>
Penalty paid on early withdrawal of savings
</td>
<td>
<input type = "text" id = "penaltyPaidAmt" name = "penaltyPaidAmt">
</td>
<td>
<input type = "text" id = "penaltyPaidHowOften" name = "penaltyPaidHowOften">
</td>
</tr>
<tr>
<td>
Student loan interest
</td>
<td>
<input type = "text" id = "stuLoanIntAmt" name = "stuLoanIntAmt">
</td>
<td>
<input type = "text" id = "stuLoanIntHowOften" name = "stuLoanIntHowOften">
</td>
</tr>
<tr>
<td>
Tuition and fees
</td>
<td>
<input type = "text" id = "tuitionAndFeeAmt" name = "tuitionAndFeeAmt">
</td>
<td>
<input type = "text" id = "tuitionAndFeeHowOften" name = "tuitionAndFeeHowOften">
</td>
</tr>
<tr>
<td>
Domestic production activities
</td>
<td>
<input type = "text" id = "domestivProdActAmt" name = "domestivProdActAmt">
</td>
<td>
<input type = "text" id = "domestivProdActHowOften" name = "domestivProdActHowOften">
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
<button type="button" name="previous-arrow" onclick = "window.location='OtherIncome.jsp'">
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