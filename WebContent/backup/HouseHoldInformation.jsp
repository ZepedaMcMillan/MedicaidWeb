<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
<title>HouseHold Information</title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/HouseHoldInformation.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.tools.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
<script src="js/jquery.min.js"></script>

</head>

<body onload="fnHouseHoldInfoOnLoad();" onunload="fnHouseHoldInfoUnLoad();">
<form id="HouseHoldInformationForm" name="HouseHoldInformationForm" method="post" action="HOHContactInfo.jsp">
<img src="images/dhhs_header.png" width="100%" border="0"/>
<div id="NavBar">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td class="disable-nav-bg"><a href="HouseHoldInformation.jsp"><b>Household Information</b></a> </td>
        <td class="disable-nav-bg">Contact Information </td>
        <td class="disable-nav-bg">General Information </td>
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
<div class = "content-bg-big"> 
<div align="left" class = "main-heading">
HOH Information
</div>
<br>
<br>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="60%" valign="middle" class="label-bg">What is your Name? <span>*</span></td>
<td width="40%" valign="middle" class="field-bg">
<input name="HOHFirstName" type="text" class="width120" id="HOHFirstName" maxlength="50" required/><br />
<div class="small-label">First<span>*</span></div>

<label for="textfield"></label>
<input name="HOHMiddleName" type="text" class="width120" id="HOHMiddleName" maxlength="50"/><br />
<div class="small-label">Middle</div>

<input name="HOHLastName" type="text" class="width120" id="HOHLastName" maxlength="50" required/><br />
<div class="small-label">Last<span>*</span></div>

<input name="HOHSuffix" type="text" class="width120" id="HOHSuffix" maxlength="50" /><br />
<div class="small-label">Suffix</div>
</td>
</tr>
<tr>
<td valign="middle" class="label-bg">What is Date of Birth? <span>*</span></td>
<td colspan="2" valign="middle" class="field-bg"><input type="date" class="width120" name="HOHDOB" id="HOHDOB" required/></td>
</tr>
<tr>
<td valign="middle" class="label-bg">What is your Gender?</td>
<td colspan="2" valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="HOHGender" id="HOHGenderM" value="Male" checked/>
<label for="HOHGender">Male</label>
<input type="radio"  class="radio-button" name="HOHGender" id="HOHGenderF" value="Female"/>
<label for="HOHGender">Female</label>
</td>
</tr>
</table>
<div class="partition">&nbsp;</div>
<h4>Household Details</h4>
<br>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td valign="middle" class="label-bg">Aside from yourself, are you seeking medical assistance for anyone else in your household? </td>
<td valign="middle" class="field-bg"><input type="radio"  class="radio-button" name="HOHHouseholdMembers" id="HOHHouseholdMembersY" value="y" onclick = "fnAddMemberNames('y')"/>
<label for="HOHHouseholdMembers">Yes</label>
<input type="radio"  class="radio-button" name="HOHHouseholdMembers" id="HOHHouseholdMembersN" value="n" onclick = "fnAddMemberNames('n')" checked/>
<label for="HOHHouseholdMembers">No</label></td>
</tr>
<tr>
<td valign="middle" class="label-bg">Relationship </td>
<td colspan="2" valign="middle" class="field-bg"><input type="text" class="width120" name="self" id="self" value = "Self" disabled /></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="form-container" style="display:none;" id="HOHMemberDetails">
<tr>
<td width="20%" valign="middle" class="label-bg"><input type = "button" id = "addMemberNames" value = "Add Member" onClick = "fnAddMemberNames('m')"></td>
<td width="80%" valign="middle" class="field-bg"> 
<table id = "memberNameTable" width="100%" cellspacing="3">
<tr>
<td width="15%"><font size = "3" color = "#0B0B61">First Name<span>*</span></font></td>
<td width="15%"><font size = "3" color = "#0B0B61">Middle Name</font></td>
<td width="15%"><font size = "3" color = "#0B0B61">Last Name<span>*</span></font></td>
<td width="15%"><font size = "3" color = "#0B0B61">DOB<span>*</span></font></td>
<td width="15%"><font size = "3" color = "#0B0B61">Relation</font></td>
<td width="15%"><font size = "3" color = "#0B0B61">Gender</font></td>
<td width="10%"><font size = "3" color = "#0B0B61">Delete</font></td>
</tr>
</table>
</td>
</tr>
</table>
<table style="margin: auto;" width = "80%">
<tr>
<td valign="top"><a href="VoterRegistration.jsp"></a><a href="index.jsp"><img src="images/exit-icon2.png" width="29" height="50" /></a></td>
<td align="right" valign="top">
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