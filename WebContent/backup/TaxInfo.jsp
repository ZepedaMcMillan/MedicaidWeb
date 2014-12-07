<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Tax Information</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/TaxInformation.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload="fnLoadTaxInfo()" onunload = "fnTaxInfoOnUnLoad()">
<form id="TaxInfoForm" name="TaxInfoForm" method="post" action="OtherAsstInquiry.jsp">
<img src="images/dhhs_header.png" width="100%" border="0"/>
<div id="NavBar">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
       <tr>
        <td class="disable-nav-bg"><a href="HouseHoldInformation.jsp">Household Information</a> </td>
        <td class="disable-nav-bg"><a href="HOHContactInfo.jsp">Contact Information</a></td>
        <td class="disable-nav-bg"><a href="GeneralInformation.jsp">General Information</a> </td>
        <td class="disable-nav-bg"><a href="TaxInfo.jsp"><b>Tax Information</b></a></td>
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
<table align = "center" width="70%" id="TaxInfoMainOuterTable">
<tr>
<td id="TaxInfoMainOuterTableCell0">
<div class = "content-bg-big" id="TaxInfoDivHOH">
<div align="left" class = "main-heading" id="TaxInfoMainHeading">
Tax Information
</div>
<br>
<br>
<div id="TaxInfoMainName">
&emsp;&emsp;<span id="TaxInfoHOHName" style="font-weight: bold; color: black; font-size: 15pt"></span>
</div>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id="TaxInfoHohTable">
                  
                  <tr>
                    <td width="60%" valign="middle" class="label-bg">Do you plan on filing a federal income tax return next year? </td>
                    <td width="40%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name="fileFedIncomeTax" id="fileFedIncomeTaxY" value="y" onclick = "fnFileIncomeTax('y')"/>
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name="fileFedIncomeTax" id="fileFedIncomeTaxN" value="n" onclick = "fnFileIncomeTax('n')" checked/>
                      <label for="radio5">No</label>
			    </td>
                   </tr>
			   <tr style="display:none;" id="fileIncomeTaxYes1">
				<td width="60%" valign="middle" class="label-bg">Do you expect to file a joint return with a spouse/partner? </td>
                    <td width="40%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name = "jointReturnWithSpouse" id = "jointReturnWithSpouseY" value = "Yes" onclick = "fnjointReturnWithSpouse('y')"/>
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name = "jointReturnWithSpouse" id = "jointReturnWithSpouseN" value = "No" onclick = "fnjointReturnWithSpouse('n')" checked/>
                      <label for="radio5">No</label>
			    </td>
			   </tr>
			  <tr style="display:none;" id="jointReturnWithSpouseYes">
				<td valign="middle" class="label-bg">What is the name of your Spouse? </td>
                    <td valign="middle" class="field-bg"><input type="text" name="spouseName" class="width120" id="spouseName" /></td>
			   </tr>

 			 <tr style="display:none;" id="fileIncomeTaxYes2">
				<td width="60%" valign="middle" class="label-bg">Will you claim any dependents on your tax return? </td>
                   <td width="40%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name = "taxDependants" id = "taxDependantsY" value = "Yes" onclick = "fntaxDependants('y')"/>
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name = "taxDependants" id = "taxDependantsN" value = "No" onclick = "fntaxDependants('n')" checked/>
                      <label for="radio5">No</label>
			    </td>
			   </tr>
			<tr style="display:none;" id="taxDependantsYes">
				<td valign="middle" class="label-bg">Who are they? </td>
                    <td valign="middle" class="field-bg" id="taxDependantsValues"><input type="text" name="whoTaxDep" class="width120" id="whoTaxDep" />
			   </td>
			   </tr>
			
			 <tr style="display:none;" id="fileIncomeTaxYes3">
				<td width="60%" valign="middle" class="label-bg">Are you being claimed as a dependent on someone else's tax return? </td>
                    <td width="40%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name = "youDependant" id = "youDependantY" value = "Yes" onclick = "fnyouDependant('y')"/>
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name = "youDependant" id = "youDependantN" value = "No" onclick = "fnyouDependant('n')" checked/>
                      <label for="radio5">No</label>
			    </td>
			   </tr>
			<tr style="display:none;" id="youDependantYes">
				<td valign="middle" class="field-bg">Name? <input type="text" name="dependatName" class="width120" id="dependatName" /></td>
				<td valign="middle" class="field-bg">Relationship? <input type="text" name="dependantRelationship" class="width120" id="dependantRelationship" /></td>
      		</tr>
			<tr style="display:none;" id="fileIncomeTaxNo">
				<td width="60%" valign="middle" class="label-bg">Are you being claimed as a dependent on someone else's tax return? </td>
                    <td width="40%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name = "youDependantN" id = "youDependantNY" value = "Yes" onclick = "fnyouDependantN('y')"/>
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name = "youDependantN" id = "youDependantNN" value = "No" onclick = "fnyouDependantN('n')" checked/>
                      <label for="radio5">No</label>
			    </td>
			   </tr>
			<tr style="display:none;" id="youDependantYesN">
				<td valign="middle" class="field-bg">Name? <input type="text" name="dependatName1" class="width120" id="dependatName1" /></td>
				<td valign="middle" class="field-bg">Relationship? <input type="text" name="dependantRelationship1" class="width120" id="dependantRelationship1" /></td>
              </tr>
          </table>
<table style="margin: auto;" width = "80%">
<tr>
<td valign="top"><a href="VoterRegistration.jsp"></a><a href="index.jsp"><img src="images/exit-icon2.png" width="29" height="50" /></a></td>
<td align="right" valign="top">
<button type="button" name="previous-arrow" onclick = "window.location='GeneralInformation.jsp'">
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