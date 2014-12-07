<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Read and Sign Application</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/ReadAndSign.js" type="text/javascript"></script>
<script src="js/jquery.tools.min.js" type="text/javascript"></script>
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload="fnReadAndSignOnLoad()" onunload="fnReadAndSignOnUnLoad()">
	<form id="ReadAndSignForm" name="ReadAndSignForm" method="post"
		action="">
		<img src="images/dhhs_header.png" width="100%" border="0" alt="" />
		<div id="NavBar">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td class="disable-nav-bg"><a href="HouseHoldInformation.jsp">Household
							Information</a></td>
					<td class="disable-nav-bg"><a href="HOHContactInfo.jsp">Contact
							Information</a></td>
					<td class="disable-nav-bg"><a href="GeneralInformation.jsp">General
							Information</a></td>
					<td class="disable-nav-bg"><a href="TaxInfo.jsp">Tax
							Information</a></td>
					<td class="disable-nav-bg"><a href="OtherAsstInquiry.jsp">Other
							Assistance Inquiry</a></td>
					<td class="disable-nav-bg"><a href="MemberIncome.jsp">Member
							Income </a></td>
					<td class="disable-nav-bg"><a href="OtherIncome.jsp">Other
							Income </a></td>
					<td class="disable-nav-bg"><a href="Deductions.jsp">Deductions
					</a></td>
					<td class="disable-nav-bg"><a href="RaceEthnicity.jsp">Race
							& Ethnicity </a></td>
					<td class="disable-nav-bg"><a
						href="HOHHealthInsuranceInfo.jsp">Insurance From Jobs </a></td>
					<td class="disable-nav-bg"><a href="OtherHealthInsurance.jsp">Other
							Insurance </a></td>
					<td class="disable-nav-bg"><a href="AuthRep.jsp">Authorized
							Representative </a></td>
					<td class="disable-nav-bg"><a href="Incarceration.jsp">Incarceration
					</a></td>
					<td class="disable-nav-bg"><a href="RenewalOfCoverage.jsp"><b>Rights
								and Obligations </b> </a></td>
				</tr>
			</table>
		</div>
		<div class="content-bg-big">
			<div align="left" class="main-heading">Read and Sign
				Application</div>
			<br> <br>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td valign="middle" class="label-bg"><input type="radio"
						class="radio-button" name="IUnderstand" id="IUnderstand" />I
						understand the information on this application was provided over
						the phone to an employee of the Division of Welfare and Supportive
						Services (DWSS). I am responsible for reviewing the information on
						this document and verifying the information is accurate. If I find
						a discrepancy, I will notify DWSS immediately.</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg"><input type="radio"
						class="radio-button" name="ImSigning" id="ImSigning" />I'm
						verbally signing this application under penalty of perjury, which
						means I've provided true answers to all of the questions to the
						best of my knowledge. I know that I may be subject to penalties
						under federal law if I intentionally provide false or untrue
						information.</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg"><input type="radio"
						class="radio-button" name="ISwear" id="ISwear" />I swear I have
						honestly reported the citizenship status of myself and anyone I am
						applying for</td>
				</tr>
				<tr id="agreeDisagree">
					<td valign="middle" class="field-bg"><input type="radio"
						class="radio-button" name="agreeRead&amp;Sign"
						id="agreeRead&amp;Sign" /> <label for="radio5"> <b>Agree:
						</b> During the telephone application process, you accepted and agreed
							to the above terms
					</label><br> <input type="radio" class="radio-button"
						name="agreeRead&amp;Sign" id="disAgreeRead&amp;Sign" /> <label
						for="radio5"> <b>Disagree: </b> During the telephone
							application process, you refused and disagreed to the above terms
					</label></td>
				</tr>
			</table>
			<table style="margin: auto;" width="80%">
				<tr>
					<td valign="top"><a href="VoterRegistration.jsp"></a><a
						href="index.jsp"><img src="images/exit-icon2.png" width="29"
							height="50" alt="" /></a></td>
					<td width="60%" align="center" valign="top">
						<button type="button" name="previous-arrow"
							onclick="fnSubmitForm()">
							<img src="images/printer-icon.png" alt="">
						</button>
					</td>
					<td align="right" valign="top">
						<button name="previous-arrow"
							onclick="window.location='HealthPlan.jsp'">
							<img src="images/perviouse-arrow2.png" alt="">
						</button> <br />
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>