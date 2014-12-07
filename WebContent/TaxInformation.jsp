<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tax Information</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<form id="mainForm" name="mainForm" method="post" action="TaxInformation">
		<jsp:include page="template/header.jsp" />
		<table align="center" width="70%" id="TaxInfoMainOuterTable">
			<tr>
				<td id="TaxInfoMainOuterTableCell0">
					<div class="content-bg-big" id="TaxInfoDivHOH">
						<div align="left" class="main-heading" id="TaxInfoMainHeading" style="margin-bottom: 20px;">Tax Information</div>
						<div id="TaxInfoMainName">&emsp;&emsp;<span id="TaxInfoHOHName" style="font-weight: bold; color: black; font-size: 15pt"></span>
						</div>
						<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id="TaxInfoHohTable">
							<tr>
								<td width="60%" valign="middle" class="label-bg">Do you
									plan on filing a federal income tax return next year?</td>
								<td width="40%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="filingFederalTax" id="fileFedIncomeTaxY" value="y" onclick="toggleConditionalElements('#fileIncomeTaxYes1,#fileIncomeTaxYes2,#fileIncomeTaxYes3');" ${taxInfo.filingFederalTax == 'y' ? 'checked' : ''}  />
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="filingFederalTax" id="fileFedIncomeTaxN" value="n" onclick="toggleConditionalElements('','#fileIncomeTaxYes1,#fileIncomeTaxYes2,#fileIncomeTaxYes3');" ${taxInfo.filingFederalTax != 'y' ? 'checked' : ''} /> 
									<label for="radio5">No</label></td>
							</tr>
							<tr style="display: ${taxInfo.filingFederalTax != 'y' ? 'none' : ''};" id="fileIncomeTaxYes1">
								<td width="60%" valign="middle" class="label-bg">Do you
									expect to file a joint return with a spouse/partner?</td>
								<td width="40%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="filingJoint" id="jointReturnWithSpouseY" value="Yes" onclick="toggleConditionalElement('jointReturnWithSpouseYes', true);" ${taxInfo.filingJoint == 'Yes' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label>
									<input type="radio" class="radio-button" name="filingJoint" id="jointReturnWithSpouseN" value="No" onclick="toggleConditionalElement('jointReturnWithSpouseYes', true);" ${taxInfo.filingJoint != 'Yes' ? 'checked' : ''} /> 
									<label for="radio5">No</label></td>
							</tr>
							<tr style="display: ${taxInfo.filingJoint != 'Yes' ? 'none' : ''};" id="jointReturnWithSpouseYes">
								<td valign="middle" class="label-bg">What is the name of your Spouse/Partner?</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="spouseName" class="width120" id="spouseName" value="${taxInfo.spouseName}" />
								</td>
							</tr>

							<tr style="display: ${taxInfo.filingFederalTax != 'y' ? 'none' : ''};" id="fileIncomeTaxYes2">
								<td width="60%" valign="middle" class="label-bg">Will you
									claim any dependents on your tax return?</td>
								<td width="40%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="isClaimingDependents" id="taxDependantsY" value="Yes" onclick="toggleConditionalElement('taxDependentsYes', true);" ${taxInfo.isClaimingDependents == 'Yes' ? 'checked' : ''} />
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="isClaimingDependents" id="taxDependantsN" value="No" onclick="toggleConditionalElement('taxDependentsYes', false);" ${taxInfo.isClaimingDependents != 'Yes' ? 'checked' : ''} /> 
									<label for="radio5">No</label>
								</td>
							</tr>
							<tr style="display: ${taxInfo.isClaimingDependents == 'Yes' ? '' : 'none'};" id="taxDependentsYes">
								<td valign="middle" class="label-bg">Who are they?</td>
								<td valign="middle" class="field-bg" id="taxDependantsValues">
									<input type="text" name="dependents" id="dependents" value="${taxInfo.dependents}" />
								</td>
							</tr>

							<tr style="display: " id="fileIncomeTaxNo">
								<td width="60%" valign="middle" class="label-bg">Are you
									being claimed as a dependent on someone else's tax return?</td>
								<td width="40%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="isClaimedOnOther" id="youDependantY" value="y" onclick="toggleConditionalElement('youDependentYes,youDependentYes2', true);" ${taxInfo.isClaimedOnOther == 'y' ? 'checked' : ''} />
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="isClaimedOnOther" id="youDependantN" value="n" onclick="toggleConditionalElement('youDependentYes,youDependentYes2', false);" ${taxInfo.isClaimedOnOther != 'y' ? 'checked' : ''} /> 
									<label for="radio5">No</label>
								</td>
							</tr>
							<tr style="display: ${taxInfo.isClaimedOnOther != 'y' ? 'none' : ''};" id="youDependentYes">
								<td valign="middle" class="label-bg">What is the name of the tax filer?</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="otherFilerName" class="width120" id="otherFilerName" value="${taxInfo.claimedOnOther.otherFilerName}" />
								</td>
							</tr>
							<tr style="display: ${taxInfo.isClaimedOnOther != 'y' ? 'none' : ''};" id="youDependentYes2">
								<td valign="middle" class="label-bg">How are you related to the tax filer?</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="relationToFiler" class="width120" id="relationToFiler" value="${taxInfo.claimedOnOther.relationToFiler}" />
								</td>
							</tr>
						</table>
						<jsp:include page="template/footer.jsp">
							<jsp:param value="GeneralInformation?memberIndex=${param.memberIndex}" name="previousLocation" />
						</jsp:include>
					</div>
				</td>
				<td>
					<jsp:include page="template/members.jsp">
						<jsp:param value="TaxInformation" name="location" />
					</jsp:include>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>