<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Member Income</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/MemberIncome.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload="fnLoadMemberIncome()" onunload = "fnMemberIncomeOnUnLoad()">
<form id="MemberIncomeForm" name="MemberIncomeForm" method="post" action="OtherIncome.jsp">
<img src="images/dhhs_header.png" width="100%" border="0"/>
<div id="NavBar">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td class="disable-nav-bg"><a href="HouseHoldInformation.jsp">Household Information</a> </td>
        <td class="disable-nav-bg"><a href="HOHContactInfo.jsp">Contact Information</a></td>
        <td class="disable-nav-bg"><a href="GeneralInformation.jsp">General Information</a> </td>
        <td class="disable-nav-bg"><a href="TaxInfo.jsp">Tax Information</a></td>
        <td class="disable-nav-bg"><a href="OtherAsstInquiry.jsp">Other Assistance Inquiry</a></td>
        <td class="disable-nav-bg"><a href="MemberIncome.jsp"><b>Member Income </b></a></td>
        <td class="disable-nav-bg">Other Income </td>
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
<table align = "center" width="70%" id="MemberIncomeMainOuterTable">
<tr>
<td id="MemberIncomeMainOuterTableCell0">
<div class = "content-bg-big" id="MemberIncomeDivHOH">
<div align="left" class = "main-heading" id="MemberIncomeMainHeading">
Member Income
</div>
<br>
<br>
<div id="MemberIncomeMainName">
&emsp;&emsp;<span id="MemberIncomeHOHName" style="font-weight: bold; color: black; font-size: 15pt"></span>
</div>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id="MemberIncomeHohTable">
<tr>
<td width="40%" valign="middle" class="label-bg">In the past three months did you </td>
<td width="60%" class="field-bg">
<label for="inThePastThreeMonths">Change Jobs&emsp;&emsp;&nbsp;&nbsp;</label><input type="checkbox"  name="inThePastThreeMonths" id="inThePastThreeMonthsChangeJobs" value="changeJobs" /><br>
<label for="inThePastThreeMonths">Stop Working&emsp;&emsp;&nbsp;</label><input type="checkbox"  name="inThePastThreeMonths" id="inThePastThreeMonthsStopWorking" value="stopWorking" /><br>
<label for="inThePastThreeMonths">Work Fewer Hours</label><input type="checkbox"  name="inThePastThreeMonths" id="inThePastThreeMonthsWorkFewerHours" value="workFewerHours" /><br>
<label for="noneOfThese">None of these&emsp;&emsp;</label><input type="checkbox"  name="inThePastThreeMonths" id="inThePastThreeMonthsNoneOfThese" value="noneOfThese"/><br>
</td>
</tr>
<tr>
<td width="40%" valign="middle" class="label-bg">Are you currently employed? </td>
<td width="60%" valign="middle" class="field-bg">
<input type="radio"  class="radio-button" name="currentlyEmployed" id="currentlyEmployedY" value="y" onclick = "fnCurrentlyEmployed('y')"/>
<label for="radio5">Yes</label>
<input type="radio"  class="radio-button" name="currentlyEmployed" id="currentlyEmployedN" value="n" onclick = "fnCurrentlyEmployed('n')" checked/>
<label for="radio5">No</label>
</td>
</tr>
<tr id = "currentlyEmployedYesButton" style="display: none">
<td>
<input type="button" id = "addEmployment" name = "addEmployment" value = "Add" onclick = "fnAddEmployment()" width = "50"/>
</td>
</tr>
<tr id = "currentlyEmployedYesRow" style="display: none">
<td colspan = "2">
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id = "employmentDetailsTable">

<tr>
<td valign="middle" class="label-bg">What is the name of your Employer? </td>
<td valign="middle" class="field-bg"><input type="text" name="employerName" class="width40" id="employerName" class="width120"/></td>
</tr>

<tr>
<td valign="middle" class="label-bg">What is the address of your Employer? </td>
<td valign="middle" class="field-bg"><input type="text" name="employerAddr" class="width40" id="employerAddr" class="width120"/>
<br>
<input name="empCity" type="text" class="width120" id="empCity" maxlength="50" class="width120"/><br />
<div class="small-label">City</div>

<input name="empState" type="text" class="width120" id="empState" maxlength="50" class="width120"/><br />
<div class="small-label">State</div>

<input name="empZip" type="number" class="width120" id="empZip" maxlength="50" class="width120"/><br />
<div class="small-label">Zip</div>

</td>
</tr>
<tr>
<td valign="middle" class="label-bg">What is the phone number of your Employer? </td>
<td valign="middle" class="field-bg"><input type="number" name="employerPh" class="width40" id="employerPh" class="width120"/>
</tr>
<tr>
<td valign="middle" class="label-bg">What is the average hours worked per week? </td>
<td valign="middle" class="field-bg"><input type="number" name="avgHoursWorkedPerWeek" class="width40" id="avgHoursWorkedPerWeek" class="width120"/>
</tr>
<tr>
<td valign="middle" class="label-bg">What is the gross wages/tips per pay period? </td>
<td valign="middle" class="field-bg"><input type="number" name="grossWagesPerPayPeriod" class="width40" id="grossWagesPerPayPeriod" class="width120"/>
</tr>
<tr>
<td width="60%" valign="middle" class="label-bg">How often are you paid?</td>
<td width="40%" valign="middle" class="field-bg">
<table>
<tr>
<td>
<label for="payFrequency">Weekly</label>
</td>
<td>
<input type="checkbox"  name="payFrequency" id="payFrequencyWeekly" value="weekly" />
</td>
</tr>
<tr>
<td>
<label for="payFrequency">Every Two Weeks</label>
</td>
<td>
<input type="checkbox"  name="payFrequency" id="payFrequencyBiWeekly" value="biWeekly" />
</td>
</tr>
<tr>
<td>
<label for="payFrequency">Semi Monthly</label>
</td>
<td>
<input type="checkbox"  name="payFrequency" id="payFrequencySemiMonthly" value="semiMonthly" />
</td>
</tr>
<tr>
<td>
<label for="payFrequency">Monthly</label>
</td>
<td>
<input type="checkbox"  name="payFrequency" id="payFrequencyMonthly" value="monthly" />
</td>
</tr>
<tr>
<td>
<label for="payFrequency">Annually</label>
</td>
<td>
<input type="checkbox"  name="payFrequency" id="payFrequencyAnnually" value="annually"/>
</td>
</tr></table>
</td>
</tr>

<tr>
<td width="60%" valign="middle" class="label-bg">Are you self employed? </td>
<td width="40%" valign="middle" class="field-bg">
<input type="radio"  class="radio-button" name="selfEmployed" id="selfEmployedY" value="y" onclick = "fnSelfEmployed('y')"/>
<label for="radio5">Yes</label>
<input type="radio"  class="radio-button" name="selfEmployed" id="selfEmployedN" value="n" onclick = "fnSelfEmployed('n')" checked/>
<label for="radio5">No</label>
</td>
</tr>
<tr id = "selfEmployedYesRow" style="display: none">
<td valign="middle" class="label-bg">What is your type of work? </td>
<td valign="middle" class="field-bg"><input type="text" name="selfEmplyedTypeOfWork" class="width120" id="selfEmplyedTypeOfWork" />
<td valign="middle" class="label-bg">How much net income (profits once expenses are paid) will you receive this month? </td>
<td valign="middle" class="field-bg"><input type="number" name="selfEmplyedNetIncome" class="width120" id="selfEmplyedNetIncome" />
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
<button type="button" name="previous-arrow" onclick = "window.location='OtherAsstInquiry.jsp'">
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