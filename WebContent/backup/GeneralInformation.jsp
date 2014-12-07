<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>General Information</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/GeneralInformation.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload = "fnLoadGeneralInfo()" onunload = "fnGeneralInfoOnUnLoad()">
<form id="GeneralInfoForm" name="GeneralInfoForm" method="post" action="TaxInfo.jsp">
<img src="images/dhhs_header.png" width="100%" border="0"/>
<div id="NavBar">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
     <tr>
        <td class="disable-nav-bg"><a href="HouseHoldInformation.jsp">Household Information</a> </td>
        <td class="disable-nav-bg"><a href="HOHContactInfo.jsp">Contact Information</a></td>
        <td class="disable-nav-bg"><a href="GeneralInformation.jsp"><b>General Information</b></a> </td>
        <td class="disable-nav-bg">Tax Information</td>
        <td class="disable-nav-bg">Other Assistance Inquiry</td>
        <td class="disable-nav-bg">Member Income </td>
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
<table align = "center" width="70%" id="GenInfoMainOuterTable">
<tr>
<td id="GenInfoMainOuterTableCell0">
<div class = "content-bg-big" id="GeneralInfoDivHOH">
<div align="left" class = "main-heading" id="GeneralInfoMainHeading">
General Information
</div>
<br>
<br>
<div id="GeneralInfoMainName">
&emsp;&emsp;<span id="genInfoHOHName" style="font-weight: bold; color: black; font-size: 15pt"></span>
</div>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id="GeneralInfoHohTable">
              
              <tr>
                <td width="40%" valign="middle" class="label-bg">What is your Marital Status? </td>
                <td width="60%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name="married" id="marriedY" value="y" onclick = "fnMaritalStatus('m')"/>
              <label for="radio5">Married</label>
              <input type="radio"  class="radio-button" name="married" id="marriedN" value="n" onclick = "fnMaritalStatus('s')" checked/>
                  <label for="radio5">Single</label>
              <input type="radio"  class="radio-button" name="married" id="marriedD" value="y" onclick = "fnMaritalStatus('d')"/>
              <label for="radio5">Divorced</label>
              <input type="radio"  class="radio-button" name="married" id="marriedL" value="y" onclick = "fnMaritalStatus('l')"/>
              <label for="radio5">Legally Separated</label>
              <input type="radio"  class="radio-button" name="married" id="marriedN" value="y" onclick = "fnMaritalStatus('n')"/>
              <label for="radio5">Never Married</label>
              <input type="radio"  class="radio-button" name="married" id="marriedP" value="y" onclick = "fnMaritalStatus('p')"/>
              <label for="radio5">Separated</label>
              <input type="radio"  class="radio-button" name="married" id="marriedW" value="y" onclick = "fnMaritalStatus('w')"/>
              <label for="radio5">Widowed</label>
   </td>
               </tr>
  <tr style="display:none;" id="liveWithSpouseRow">
<td width="60%" valign="middle" class="label-bg">Do you live with your spouse? </td>
                <td width="40%" valign="middle" class="field-bg">
<input type="radio"  class="radio-button" name = "liveWithSpouse" id="liveWithSpouseY"/>
                  <label for="radio5">Yes</label>
                  <input type="radio"  class="radio-button" name = "liveWithSpouse" id="liveWithSpouseN" checked/>
                  <label for="radio5">No</label>
   </td>
  </tr>
              <tr>
                <td valign="middle" class="label-bg">What is your SSN? </td>
                <td valign="middle" class="field-bg"><input type="number" name="memberSSN" id="memberSSN" maxlength="10"/></td>
              </tr>

<tr id="genderFemale">
<td valign="middle" class="label-bg">Are you pregnant? </td>
                <td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="pregnant" id="pregnantY" value="y" onclick = "fnPregnant('y')"/>
              <label for="radio12">Yes</label>
              <input type="radio"  class="radio-button" name="pregnant" id="pregnantN" value="n" onclick = "fnPregnant('n')" checked/>
                  <label for="radio12">No</label></td>
 </tr>
 <tr style="display:none;" id="pregnantYes">
 <td valign="middle" class="field-bg">What is the due date? <input type="date" name="pregDueDate" id="pregDueDate" /></td>
 <td valign="middle" class="field-bg">How many babies are you expecting? <input type="number" name="expectedBabies" id="expectedBabies" /></td>
 </tr>

 <tr>
<td valign="middle" class="label-bg">Are you legally blind or permanently disabled? </td>
                <td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="legallyBlind" id="legallyBlindY" />
                  <label for="radio12">Yes</label>
                  <input type="radio"  class="radio-button" name="legallyBlind" id="legallyBlindN" checked/>
                  <label for="radio12">No</label></td>
 </tr>

 <tr>
<td valign="middle" class="label-bg">Are you receiving Supplemental Security Income? </td>
                <td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="supplSecurityIncome" id="supplSecurityIncomeY"/>
                  <label for="radio12">Yes</label>
                  <input type="radio"  class="radio-button" name="supplSecurityIncome" id="supplSecurityIncomeN" checked/>
                  <label for="radio12">No</label></td>
 </tr>

 	<tr>
<td valign="middle" class="label-bg">Do you need help with activities of daily living through personal assistance services or a medical facility? </td>
                <td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="helpWithDailyLiving" id="helpWithDailyLivingY" />
                  <label for="radio12">Yes</label>
                  <input type="radio"  class="radio-button" name="helpWithDailyLiving" id="helpWithDailyLivingN" checked/>
                  <label for="radio12">No</label></td>
 </tr>

         </table>
<table style="margin: auto;" width = "80%">
<tr>
<td valign="top"><a href="VoterRegistration.jsp"></a><a href="index.jsp"><img src="images/exit-icon2.png" width="29" height="50" /></a></td>
<td align="right" valign="top">
<button type="button" name="previous-arrow" onclick = "window.location='HOHContactInfo.jsp'">
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