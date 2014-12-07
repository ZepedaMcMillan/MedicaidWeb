<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<title>Health Plan</title>
<meta charset="UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/HealthPlan.js" type="text/javascript"></script>
<script src="js/jquery.tools.min.js" type="text/javascript"></script>
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<!-- cdn for modernizr, if you haven't included it already 
<script src="js/modernizr-custom.js"></script>-->
<!-- polyfiller file to detect and load polyfills 
<script src="js/polyfiller.js"></script>-->
</head>
<body onload="fnHealthPlanOnLoad()">
	<form id="HealthPlanForm" name="HealthPlanForm" method="post"
		action="ReadAndSign.jsp">
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
			<div align="left" class="main-heading">Health Plan</div>
			<br> <br>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td valign="middle" class="label-bg">Families who live in
						urban Washoe County or urban Clark County are covered by a managed
						care organization (MCO). You are being asked to choose one of the
						following health plans. If you do not indicate a health plan
						preference on your application, we will choose a plan for you.
						Your choice of health plan does not guarantee acceptance into the
						Nevada Medicaid or Nevada Check Up program. We might not honor
						your choice of plans if you or any family members have been
						enrolled in one of our current managed care organizations. Once
						enrolled, families will receive a member handbook explaining the
						health plan benefits and can contact the numbers below for
						information regarding the health plans.</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg"><b>NOTE:</b> If you do
						not choose a health plan preference, we will choose a plan for
						you.</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg">For families living in
						the fee-for-service benefit area, services may be obtained from
						any Nevada Medicaid provider. If you need assistance in locating a
						provider, please call your local Medicaid district office:<br>
						Carson City (775) 684-3651 <br> Reno (775) 687-1900 <br>
						Las Vegas (702) 668-4200 <br> Elko (775) 753-1191<br>
					</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg">Please choose a health
						plan <br> <input type="radio" class="radio-button"
						name="ameriGroup" id="ameriGroup" />a. Amerigroup: 1-800-600-4441,
						www.amerigroup.com <br> <input type="radio"
						class="radio-button" name="hpNevada" id="hpNevada" />b. Health
						Plan of Nevada: 1-800-962-8074, www.healthplanofnevada.com
					</td>
				</tr>
			</table>
			<table style="margin: auto;" width="80%">
				<tr>
					<td valign="top"><a href="VoterRegistration.jsp"></a><a
						href="index.jsp"><img src="images/exit-icon2.png" width="29"
							height="50" alt="" /></a></td>
					<td align="right" valign="top">
						<button type="button" name="previous-arrow"
							onclick="window.location='PrivacyPolicy.jsp'">
							<img src="images/perviouse-arrow2.png" alt="">
						</button>
						<button type="submit" name="next-arrow">
							<img src="images/next-arrow.png" alt="">
						</button> <br />
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>