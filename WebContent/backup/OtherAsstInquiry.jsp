<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Other Assistance Inquiry</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/OtherAsstInquiry.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery-1.3.2.min.js"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload="fnLoadOtherAsstInquiryInfo()" onunload = "fnOtherAsstUnload()"> 
<form id="OtherAsstForm" name="OtherAsstForm" method="post" action="MemberIncome.jsp">
<img src="images/dhhs_header.png" width="100%" border="0"/>
<div id="NavBar">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
     <tr>
        <td class="disable-nav-bg"><a href="HouseHoldInformation.jsp">Household Information</a> </td>
        <td class="disable-nav-bg"><a href="HOHContactInfo.jsp">Contact Information</a></td>
        <td class="disable-nav-bg"><a href="GeneralInformation.jsp">General Information</a> </td>
        <td class="disable-nav-bg"><a href="TaxInfo.jsp">Tax Information</a></td>
        <td class="disable-nav-bg"><a href="OtherAsstInquiry.jsp"><b>Other Assistance Inquiry</b></a></td>
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
<table align = "center" width="70%" id="OtherAsstMainOuterTable">
<tr>
<td id="OtherAsstMainOuterTableCell0">
<div class = "content-bg-big" id="OtherAsstDivHOH">
<div align="left" class = "main-heading" id="OtherAsstMainHeading">
Other Assistance Inquiry
</div>
<br>
<br>
<div id="OtherAsstMainName">
&emsp;&emsp;<span id="OtherAsstHOHName" style="font-weight: bold; color: black; font-size: 15pt"></span>
</div>
<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id = "OtherAsstHohTable">
                  
                  <tr>
                    <td width="60%" valign="middle" class="label-bg">Are you applying for Medicaid, Nevada Check-Up or assistance with your health insurance premiums (Advanced Premium Tax Credit - APTC)? </td>
                    <td width="40%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name="mainRadio" id="mainRadioY" value="y" onclick = "fnmainRadio('y')"/>
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name="mainRadio" id="mainRadioN" value="n" onclick = "fnmainRadio('n')" checked/>
                      <label for="radio5">No</label>
			    </td>
                   </tr>
			  <tr style="display:none;" id="mainSection">
				<td valign="middle" class="label-bg">What is your SSN? </td>
                    <td valign="middle" class="field-bg"><input type="text" name="otherAsstSSN" class="width120" id="otherAsstSSN" /></td>
			  </tr>
			  <tr style="display:none;" id="mainSection1">
                    <td width="60%" valign="middle" class="label-bg">If you are a child, under the age of 19, do you have access to public employee coverage? </td>
                    <td width="40%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name="underAge" id = "underAgeY" />
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name="underAge" id = "underAgeN" checked/>
                      <label for="radio5">No</label>
			    </td>
                   </tr>
		
			   <tr style="display:none;" id="mainSection2">
                    <td width="50%" valign="middle" class="label-bg">Are you a US citizen? </td>
                    <td width="50%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name="USCitizen"  id="USCitizenY" value="y" onclick = "fnUSCitizen('y')" checked/>
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name="USCitizen"  id="USCitizenN" value="n" onclick = "fnUSCitizen('n')" />
                      <label for="radio5">No</label>
			    </td>
                   </tr>

			  <tr style="display:none;" id="USCitizenYes">
                    <td width="60%" valign="middle" class="label-bg">Have you lived in the US since 1996? </td>
                    <td width="40%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name="lived1996" id = "lived1996Y" />
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name="lived1996" id = "lived1996N" checked/>
                      <label for="radio5">No</label>
			    </td>
                   </tr>
			
			<tr style="display:none;" id="USCitizenNo">
                    <td width="60%" valign="middle" class="label-bg">Do you have eligible immigration status? </td>
                    <td width="40%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name="immigrationStatus"  id="immigrationStatusY" value="y" onclick = "fnImmiStatus('y')" />
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name="immigrationStatus"  id="immigrationStatusN" value="n" onclick = "fnImmiStatus('n')" checked/>
                      <label for="radio5">No</label>
			    </td>
                   </tr>

			<tr style="display:none;" id="ImmigrationStatusYes1">
				<td valign="middle" class="label-bg">What is your immigration type? </td>
                    <td valign="middle" class="field-bg"><input type="text" name="immgrationType" class="width120" id="immgrationType" /></td>
                </tr>
			<tr style="display:none;" id="ImmigrationStatusYes2">
				<td valign="middle" class="label-bg">What is your immigration ID number? </td>
                    <td valign="middle" class="field-bg"><input type="text" name="immgrationIdNum" class="width120" id="immgrationIdNum" /></td>
                </tr>
			<tr style="display:none;" id="mainSection3">
                    <td width="50%" valign="middle" class="label-bg">Are you, your spouse, domestic partner or your parent (if you are a minor) an honorably discharged veteran or active duty member of the military? </td>
                    <td width="50%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name="millitarySpouse" id="millitarySpouseY" />
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name="millitarySpouse"  id="millitarySpouseN" checked/>
                      <label for="radio5">No</label>
			    </td>
                   </tr>
			<tr style="display:none;" id="mainSection4">
                    <td width="50%" valign="middle" class="label-bg">Are you a full time student? </td>
                    <td width="50%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name="ftStudent" id = "ftStudentY"/>
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name="ftStudent"  id = "ftStudentN" checked/>
                      <label for="radio5">No</label>
			    </td>
                   </tr>

			<tr style="display:none;" id="mainSection5">
                    <td width="50%" valign="middle" class="label-bg">Are you an American Indian or Alaskan Native? </td>
                    <td width="50%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name="AMorAl"  id="AMorAlY" value="y" onclick = "fnAMorAl('y')"/>
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name="AMorAl"  id="AMorAlN" value="n" onclick = "fnAMorAl('n')" checked/>
                      <label for="radio5">No</label>
			    </td>
                   </tr>
			
			<tr style="display:none;" id="AMorAlYes">
                    <td valign="middle" class="label-bg">What is your tribe? </td>
                    <td valign="middle" class="field-bg"><input type="text" name="AITribe" class="width120" id="AITribe" /></td>
                </tr>
			
			<tr style="display:none;" id="mainSection6">
                    <td width="50%" valign="middle" class="label-bg">If under age 26, have you ever been in foster care? </td>
                    <td width="50%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name="fosterCare"  id="fosterCareY" value="y" onclick = "fnfosterCare('y')"/>
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name="fosterCare"  id="fosterCareN" value="n" onclick = "fnfosterCare('n')" />
                      <label for="radio5">No</label>
			    </td>
               </tr>
               <tr style="display:none;" id="fosterCareYes1">
                    <td valign="middle" class="label-bg">Which US state? </td>
                    <td valign="middle" class="field-bg">
                    <select name="fosterCareUSState" class="width120" id="fosterCareUSState">
	<option value="AL">Alabama</option>
	<option value="AK">Alaska</option>
	<option value="AZ">Arizona</option>
	<option value="AR">Arkansas</option>
	<option value="CA">California</option>
	<option value="CO">Colorado</option>
	<option value="CT">Connecticut</option>
	<option value="DE">Delaware</option>
	<option value="DC">District Of Columbia</option>
	<option value="FL">Florida</option>
	<option value="GA">Georgia</option>
	<option value="HI">Hawaii</option>
	<option value="ID">Idaho</option>
	<option value="IL">Illinois</option>
	<option value="IN">Indiana</option>
	<option value="IA">Iowa</option>
	<option value="KS">Kansas</option>
	<option value="KY">Kentucky</option>
	<option value="LA">Louisiana</option>
	<option value="ME">Maine</option>
	<option value="MD">Maryland</option>
	<option value="MA">Massachusetts</option>
	<option value="MI">Michigan</option>
	<option value="MN">Minnesota</option>
	<option value="MS">Mississippi</option>
	<option value="MO">Missouri</option>
	<option value="MT">Montana</option>
	<option value="NE">Nebraska</option>
	<option value="NV">Nevada</option>
	<option value="NH">New Hampshire</option>
	<option value="NJ">New Jersey</option>
	<option value="NM">New Mexico</option>
	<option value="NY">New York</option>
	<option value="NC">North Carolina</option>
	<option value="ND">North Dakota</option>
	<option value="OH">Ohio</option>
	<option value="OK">Oklahoma</option>
	<option value="OR">Oregon</option>
	<option value="PA">Pennsylvania</option>
	<option value="RI">Rhode Island</option>
	<option value="SC">South Carolina</option>
	<option value="SD">South Dakota</option>
	<option value="TN">Tennessee</option>
	<option value="TX">Texas</option>
	<option value="UT">Utah</option>
	<option value="VT">Vermont</option>
	<option value="VA">Virginia</option>
	<option value="WA">Washington</option>
	<option value="WV">West Virginia</option>
	<option value="WI">Wisconsin</option>
	<option value="WY">Wyoming</option>
</select>
                 </td>
                </tr>
				<tr style="display:none;" id="fosterCareYes2">
			    <td valign="middle" class="label-bg">Age when you left the program? </td>
                    <td valign="middle" class="field-bg"><input type="text" name="fosterCareAge" class="width40" id="fosterCareAge" /></td>
                </tr>
				<tr style="display:none;" id="fosterCareYes3">
			     <td width="50%" valign="middle" class="label-bg">Did you receive health care through a state Medicaid program? </td>
                    <td width="50%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name="healthCarethroughState" id = "healthCarethroughStateY"/>
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name="healthCarethroughState" id = "healthCarethroughStateN" checked/>
                      <label for="radio5">No</label>
			    </td>
                </tr>

			<tr style="display:none;" id="mainSection7">
                    <td width="50%" valign="middle" class="label-bg">Are you the parent or primary caretaker relative of any child(ren), under the age of 19, in the household? </td>
                    <td width="50%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name="careTaker"  id="careTakerY" value="y" onclick = "fncareTaker('y')"/>
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name="careTaker"  id="careTakerN" value="n" onclick = "fncareTaker('n')" checked/>
                      <label for="radio5">No</label>
			    </td>
               </tr>
               <tr style="display:none;" id="careTakerYes">
                    <td valign="middle" class="label-bg">Who? </td>
                    <td valign="middle" class="field-bg"><input type="text" name="careTakerWho" class="width120" id="careTakerWho" /></td>
                </tr>

			<tr style="display:none;" id="mainSection8">
                    <td width="50%" valign="middle" class="label-bg">Do you have medical bills for the past three months that you need help with? </td>
                    <td width="50%" valign="middle" class="field-bg">
				<input type="radio"  class="radio-button" name="medBills"  id="medBillsY" value="y" onclick = "fnmedBills('y')"/>
                      <label for="radio5">Yes</label>
                      <input type="radio"  class="radio-button" name="medBills"  id="medBillsN" value="n" onclick = "fnmedBills('n')" checked/>
                      <label for="radio5">No</label>
			    </td>
               </tr>
               <tr style="display:none;" id="medBillsYes">
                    <td valign="middle" class="label-bg">What Months? </td>
                    <td valign="middle" class="field-bg"><input type="text" name="medBillsMonths" class="width120" id="medBillsMonths" /></td>
                </tr>


             </table>
<table style="margin: auto;" width = "80%">
<tr>
<td valign="top"><a href="VoterRegistration.jsp"></a><a href="index.jsp"><img src="images/exit-icon2.png" width="29" height="50" /></a></td>
<td align="right" valign="top">
<button type="button" name="previous-arrow" onclick = "window.location='TaxInfo.jsp'">
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