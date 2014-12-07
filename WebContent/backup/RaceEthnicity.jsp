<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Race and Ethnicity</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/RaceEthnicity.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload = "raceEthnicityLoad()">
<form id="RaceEthnicityForm" name="RaceEthnicityForm" method="post" action="HOHHealthInsuranceInfo.jsp">
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
        <td class="disable-nav-bg"><a href="RaceEthnicity.jsp"><b>Race & Ethnicity </b></a></td>
        <td class="disable-nav-bg">Insurance From Jobs </td>
        <td class="disable-nav-bg">Other Insurance </td>
        <td class="disable-nav-bg">Authorized Representative </td>
        <td class="disable-nav-bg">Incarceration </td>
        <td class="disable-nav-bg">Rights and Obligations </td>
      </tr>
</table>
</div>
<table align = "center" width="70%" id="RaceEthnicityMainOuterTable">
<tr>
<td id="RaceEthnicityMainOuterTableCell0">
<div class = "content-bg-big" id="RaceEthnicityDivHOH">
<div align="left" class = "main-heading" id="RaceEthnicityMainHeading">
Race and Ethnicity
</div>
<br>
<br>
<div id="RaceEthnicityMainName">
&emsp;&emsp;<span id="RaceEthnicityHOHName" style="font-weight: bold; color: black; font-size: 15pt"></span>
</div>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id="RaceEthnicityHohTable">
<tr>
<td width="40%" valign="middle" class="label-bg">Are you Hispanic, Latino or of Spanish origin? </td>
<td width="60%" valign="middle" class="field-bg">
<input type="radio"  class="radio-button" name="hispanicLatino" id="hispanicLatinoY" value="y" onclick = "fnHispanicLatino('y')"/>
<label for="radio5">Yes</label>
<input type="radio"  class="radio-button" name="hispanicLatino" id="hispanicLatinoN" value="n" onclick = "fnHispanicLatino('n')" checked/>
<label for="radio5">No</label>
</td>
</tr>
<tr style="display:none;" id="hispanicLatinoYRow">
<td width="40%" valign="middle" class="label-bg">Check all that apply </td>
<td width="60%" valign="middle" class="field-bg">
<table>
<tr>
<td>
<label for="hispanicLatinoYInput">Mexican</label>
</td>
<td>
<input type="checkbox"  name="hispanicLatinoYInput" id="hispanicLatinoYInputMexican" value="Mexican" />
</td>
</tr>

<tr>
<td>
<label for="hispanicLatinoYInput">Mexican American</label>
</td>
<td>
<input type="checkbox"  name="hispanicLatinoYInput" id="hispanicLatinoYInputMexAmerican" value="MexAmerican" />
</td>
</tr>

<tr>
<td>
<label for="hispanicLatinoYInput">Puerto Rican</label>
</td>
<td>
<input type="checkbox"  name="hispanicLatinoYInput" id="hispanicLatinoYInputPuertoRican" value="PuertoRican" />
</td>
</tr>

<tr>
<td>
<label for="hispanicLatinoYInput">Cuban</label>
</td>
<td>
<input type="checkbox"  name="hispanicLatinoYInput" id="hispanicLatinoYInputCuban" value="Cuban" />
</td>
</tr>

<tr>
<td>
<label for="hispanicLatinoYInput">Chicano/a</label>
</td>
<td>
<input type="checkbox"  name="hispanicLatinoYInput" id="hispanicLatinoYInputChicano" value="Chicano" />
</td>
</tr>

<tr>
<td>
<label for="hispanicLatinoYInput">Other</label><input name="otherHispanic" type="text" class="width120" id="otherHispanic"/>
</td>
<td>
<input type="checkbox"  name="hispanicLatinoYInput" id="hispanicLatinoYInputOther" value="other" />
</td>
</tr>

</table>
</td>
</tr>
<tr>
<td width="40%" valign="middle" class="label-bg">What is your Race? </td>
<td width="60%" valign="middle" class="field-bg">
<table>
<tr>
<td>
<label for="memberRace">White</label><br>
</td>
<td>
<input type="checkbox"  name="memberRace" id="memberRaceWhite" value="White" />
</td>
</tr>

<tr>
<td>
<label for="memberRace">Black or African American</label><br>
</td>
<td>
<input type="checkbox"  name="memberRace" id="memberRaceBlack" value="Black" />
</td>
</tr>
<tr>
<td>
<label for="memberRace">American Indian or Alaska Native</label><br>
</td>
<td>
<input type="checkbox"  name="memberRace" id="memberRaceNative" value="Native" />
</td>
</tr>
<tr>
<td>
<label for="memberRace">Asian Indian</label><br>
</td>
<td>
<input type="checkbox"  name="memberRace" id="memberRaceAsian" value="Asian" />
</td>
</tr>
<tr>
<td>
<label for="memberRace">Chinese</label><br>
</td>
<td>
<input type="checkbox"  name="memberRace" id="memberRaceChinese" value="Chinese" />
</td>
</tr>
<tr>
<td>
<label for="memberRace">Filipino</label><br>
</td>
<td>
<input type="checkbox"  name="memberRace" id="memberRaceFilipino" value="Filipino" />
</td>
</tr>
<tr>
<td>
<label for="memberRace">Japanese</label><br>
</td>
<td>
<input type="checkbox"  name="memberRace" id="memberRaceJapanese" value="Japanese" />
</td>
</tr>
<tr>
<td>
<label for="memberRace">Korean</label><br>
</td>
<td>
<input type="checkbox"  name="memberRace" id="memberRaceKorean" value="Korean" />
</td>
</tr>
<tr>
<td>
<label for="memberRace">Vietnamese</label><br>
</td>
<td>
<input type="checkbox"  name="memberRace" id="memberRaceVietnamese" value="Vietnamese" />
</td>
</tr>
<tr>
<td>
<label for="memberRace">Other Asian</label><br>
</td>
<td>
<input type="checkbox"  name="memberRace" id="memberRaceOtherAsian" value="OtherAsian" />
</td>
</tr>
<tr>
<td>
<label for="memberRace">Native Hawaiian</label><br>
</td>
<td>
<input type="checkbox"  name="memberRace" id="memberRaceNativeHawaiian" value="NativeHawaiian" />
</td>
</tr>
<tr>
<td>
<label for="memberRace">Guanamanian or Chamorro</label><br>
</td>
<td>
<input type="checkbox"  name="memberRace" id="memberRaceGuanamanian" value="Guanamanian" />
</td>
</tr>
<tr>
<td>
<label for="memberRace">Samoan</label><br>
</td>
<td>
<input type="checkbox"  name="memberRace" id="memberRaceSamoan" value="Samoan" />
</td>
</tr>
<tr>
<td>
<label for="memberRace">Other Pacific Islander</label><br>
</td>
<td>
<input type="checkbox"  name="memberRace" id="memberRaceOtherPacific" value="OtherPacific" />
</td>
</tr>
<tr>
<td>
<label for="memberRace">Other</label><input name="otherRace" type="text" class="width120" id="otherRace"/>
</td>
<td>
<input type="checkbox"  name="memberRace" id="memberRaceOther" value="Other" />
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
<button type="button" name="previous-arrow" onclick = "window.location='Deductions.jsp'">
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