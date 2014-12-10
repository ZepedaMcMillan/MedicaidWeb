<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Other Income</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="OtherIncome">
		<table align="center" width="70%" id="OtherIncomeMainOuterTable">
			<tr>
				<td id="OtherIncomeMainOuterTableCell0">
					<div class="content-bg-big" id="OtherIncomeDivHOH">
						<div align="left" class="main-heading" id="OtherIncomeMainHeading">
							Other Income</div>
						<br> <br>
						<div id="OtherIncomeMainName">
							&emsp;&emsp;<span id="OtherIncomeHOHName"
								style="font-weight: bold; color: black; font-size: 15pt"></span>
						</div>
						<table class="form-container" width="100%" border="0"
							cellspacing="0" cellpadding="0" id="OtherIncomeHohTable">
							<tr>
								<td width="60%" valign="middle" class="label-bg">Do you
									receive any other type of income? Note: You don't need to tell
									us about child support or veteran's disability payments.
									Certain money received may or may not be counted for Medicaid
									and Nevada Check-Up. Let us know if any money received is
									considered tribal income.</td>
								<td width="40%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="otherIncomeReceived" id="otherIncomeBigQuestionY" value="true" onclick="toggleConditionalElement('otherIncomeBigQYesRow,otherIncomeBigQYesRow2', true)" ${memberInfo.otherIncome.otherIncomeReceived == 'true' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label>
									<input type="radio" class="radio-button" name="otherIncomeReceived" id="otherIncomeBigQuestionN" value="false" onclick="toggleConditionalElement('otherIncomeBigQYesRow,otherIncomeBigQYesRow2', false)" ${memberInfo.otherIncome.otherIncomeReceived != 'true' ? 'checked' : ''} /> 
									<label for="radio5">No</label></td>
							</tr>
							<tr id="otherIncomeBigQYesRow" style="display: ${memberInfo.otherIncome.otherIncomeReceived != 'true' ? 'none' : ''}">
								<td>
									<table>
										<thead>
											<tr>
												<th>Type</th>
												<th>Amount</th>
												<th>How Often?</th>
												<th style="width: 25%">Tribal Income?</th>
											</tr>
										</thead>
										<tr>
											<td>Unemployment</td>
											<td>												
												<fmt:formatNumber type="currency" var="otherIncome0" value="${memberInfo.otherIncome.otherIncomeList[0].amount}" currencySymbol="" groupingUsed="false" />
												<input type="text" class="formatMoney" id="unemploymentAmt" name="unemploymentAmt" value="${otherIncome0}" /></td>
											<td><input type="text" id="unemploymentHowOften" name="unemploymentHowOften" value="${memberInfo.otherIncome.otherIncomeList[0].frequency}" /></td>
											<td>&emsp;&emsp;</td>
										</tr>
										<tr>
											<td>Retirement</td>
											<td>												
												<fmt:formatNumber type="currency" var="otherIncome1" value="${memberInfo.otherIncome.otherIncomeList[1].amount}" currencySymbol="" groupingUsed="false" />
												<input type="text" class="formatMoney" id="retirementAmt" name="retirementAmt" value="${otherIncome1}" /></td>
											<td><input type="text" id="retirementHowOften" name="retirementHowOften" value="${memberInfo.otherIncome.otherIncomeList[1].frequency}" /></td>
											<td>&emsp;&emsp;</td>
										</tr>
										<tr>
											<td>Pensions</td>
											<td>												
												<fmt:formatNumber type="currency" var="otherIncome2" value="${memberInfo.otherIncome.otherIncomeList[2].amount}" currencySymbol="" groupingUsed="false" />
												<input type="text" class="formatMoney" id="pensionsAmt" name="pensionsAmt" value="${otherIncome2}" /></td>
											<td><input type="text" id="pensionsHowOften" name="pensionsHowOften" value="${memberInfo.otherIncome.otherIncomeList[2].frequency}" /></td>
											<td>&emsp;&emsp;</td>
										</tr>
										<tr>
											<td>Social Security (RSDI) Benefits</td>
											<td>												
												<fmt:formatNumber type="currency" var="otherIncome3" value="${memberInfo.otherIncome.otherIncomeList[3].amount}" currencySymbol="" groupingUsed="false" />
												<input type="text" class="formatMoney" id="ssBenefitsAmt" name="ssBenefitsAmt" value="${otherIncome3}" /></td>
											<td><input type="text" id="ssBenefitsHowOften" name="ssBenefitsHowOften" value="${memberInfo.otherIncome.otherIncomeList[3].frequency}" /></td>
											<td>&emsp;&emsp;</td>
										</tr>
										<tr>
											<td>Interest/Dividends</td>
											<td>												
												<fmt:formatNumber type="currency" var="otherIncome4" value="${memberInfo.otherIncome.otherIncomeList[4].amount}" currencySymbol="" groupingUsed="false" />
												<input type="text" class="formatMoney" id="intDividentsAmt" name="intDividentsAmt" value="${otherIncome4}" />
											</td>
											<td><input type="text" id="intDividentsHowOften" name="intDividentsHowOften" value="${memberInfo.otherIncome.otherIncomeList[4].frequency}" /></td>
											<td>
												<input type="radio" class="radio-button" name="interestDividendsTribal" id="interestDividendsY" value="true" ${memberInfo.otherIncome.otherIncomeList[4].isTribal == 'true' ? 'checked' : ''} /> <label for="interestDividendsY">Yes</label>
												<input type="radio" class="radio-button" name="interestDividendsTribal" id="interestDividendsN" value="false" ${memberInfo.otherIncome.otherIncomeList[4].isTribal != 'true' ? 'checked' : ''} /> <label for="interestDividendsN">No</label>
											</td>
										</tr>
										<tr>
											<td>Annuities</td>
											<td>
																								
												<fmt:formatNumber type="currency" var="otherIncome5" value="${memberInfo.otherIncome.otherIncomeList[5].amount}" currencySymbol="" groupingUsed="false" />
												<input type="text" class="formatMoney" id="annuitiesAmt" name="annuitiesAmt" value="${otherIncome5}">
											</td>
											<td>
												<input type="text" id="annuitiesHowOften" name="annuitiesHowOften" value="${memberInfo.otherIncome.otherIncomeList[5].frequency}" />
											</td>
											<td>
												<input type="radio" class="radio-button" name="annuitiesTribal" id="annuitiesY" value="true" ${memberInfo.otherIncome.otherIncomeList[5].isTribal == 'true' ? 'checked' : ''} /> <label>Yes</label>
												<input type="radio" class="radio-button" name="annuitiesTribal" id="annuitiesN" value="false" ${memberInfo.otherIncome.otherIncomeList[5].isTribal != 'true' ? 'checked' : ''} /> <label>No</label>
											</td>
										</tr>
										<tr>
											<td>Rental or Royalty Income</td>
											<td>
																								
												<fmt:formatNumber type="currency" var="otherIncome6" value="${memberInfo.otherIncome.otherIncomeList[6].amount}" currencySymbol="" groupingUsed="false" />
												<input type="text" class="formatMoney" id="rentalRoyaltyAmt" name="rentalRoyaltyAmt" value="${otherIncome6}">
											</td>
											<td>
												<input type="text" id="rentalRoyaltyHowOften" name="rentalRoyaltyHowOften" value="${memberInfo.otherIncome.otherIncomeList[6].frequency}" />
											</td>
											<td>
												<input type="radio" class="radio-button" name="rentalRoyaltyTribal" id="rentalRoyaltyY" value="true" ${memberInfo.otherIncome.otherIncomeList[6].isTribal == 'true' ? 'checked' : ''} /> <label>Yes</label>
												<input type="radio" class="radio-button" name="rentalRoyaltyTribal" id="rentalRoyaltyN" value="false" ${memberInfo.otherIncome.otherIncomeList[6].isTribal != 'true' ? 'checked' : ''} /> <label>No</label>
											</td>
										</tr>
										<tr>
											<td>Capital Gains</td>
											<td>
																								
												<fmt:formatNumber type="currency" var="otherIncome7" value="${memberInfo.otherIncome.otherIncomeList[7].amount}" currencySymbol="" groupingUsed="false" />
												<input type="text" class="formatMoney" id="capitalGainsAmt" name="capitalGainsAmt" value="${otherIncome7}">
											</td>
											<td>
												<input type="text" id="capitalGainsHowOften" name="capitalGainsHowOften" value="${memberInfo.otherIncome.otherIncomeList[7].frequency}" />
											</td>
											<td>
												<input type="radio" class="radio-button" name="capitalGainsTribal" id="capitalGainsTribalY" value="true" ${memberInfo.otherIncome.otherIncomeList[7].isTribal == 'true' ? 'checked' : ''} /> <label>Yes</label>
												<input type="radio" class="radio-button" name="capitalGainsTribal" id="capitalGainsTribalN" value="false" ${memberInfo.otherIncome.otherIncomeList[7].isTribal != 'true' ? 'checked' : ''} /> <label>No</label>
											</td>
										</tr>
										<tr>
											<td>Farming or Fishing Income</td>
											<td>																								
												<fmt:formatNumber type="currency" var="otherIncome8" value="${memberInfo.otherIncome.otherIncomeList[8].amount}" currencySymbol="" groupingUsed="false" />
												<input type="text" class="formatMoney" id="farmFishAmt" name="farmFishAmt" value="${otherIncome8}">
											</td>
											<td>
												<input type="text" id="farmFishHowOften" name="farmFishHowOften" value="${memberInfo.otherIncome.otherIncomeList[8].frequency}" />
											</td>
											<td>
												<input type="radio" class="radio-button" name="farmFishTribal" id="farmFishTribalY" value="true" ${memberInfo.otherIncome.otherIncomeList[8].isTribal == 'true' ? 'checked' : ''} /> <label>Yes</label>
												<input type="radio" class="radio-button" name="farmFishTribal" id="farmFishTribalN" value="false" ${memberInfo.otherIncome.otherIncomeList[8].isTribal != 'true' ? 'checked' : ''} /> <label>No</label>
											</td>
										</tr>
										<tr>
											<td>Alimony</td>
											<td>												
												<fmt:formatNumber type="currency" var="otherIncome9" value="${memberInfo.otherIncome.otherIncomeList[9].amount}" currencySymbol="" groupingUsed="false" />
												<input type="text" class="formatMoney" id="alimonyAmt" name="alimonyAmt" value="${otherIncome9}" />
											</td>
											<td>
												<input type="text" id="alimonyHowOften" name="alimonyHowOften"  value="${memberInfo.otherIncome.otherIncomeList[9].frequency}" />
											</td>
											<td>&emsp;&emsp;</td>
										</tr>
										<tr>
											<td>Scholarship Grants</td>
											<td>												
												<fmt:formatNumber type="currency" var="otherIncome10" value="${memberInfo.otherIncome.otherIncomeList[10].amount}" currencySymbol="" groupingUsed="false" />
												<input type="text" class="formatMoney" id="scholarshipAmt" name="scholarshipAmt" value="${otherIncome10}" />
											</td>
											<td>
												<input type="text" id="scholarshipHowOften" name="scholarshipHowOften" value="${memberInfo.otherIncome.otherIncomeList[10].frequency}" />
											</td>
											<td>
												<input type="radio" class="radio-button" name="scholarshipTribal" id="scholarshipTribalY" value="true" ${memberInfo.otherIncome.otherIncomeList[10].isTribal == 'true' ? 'checked' : ''} /> <label>Yes</label>
												<input type="radio" class="radio-button" name="scholarshipTribal" id="scholarshipTribalN" value="false" ${memberInfo.otherIncome.otherIncomeList[10].isTribal != 'true' ? 'checked' : ''} /> <label>No</label>
											</td>
										</tr>
										<tr>
											<td>Cash Advances</td>
											<td>												
												<fmt:formatNumber type="currency" var="otherIncome11" value="${memberInfo.otherIncome.otherIncomeList[11].amount}" currencySymbol="" groupingUsed="false" />
												<input type="text" class="formatMoney" id="cashAdvAmt" name="cashAdvAmt" value="${otherIncome11}" />
											</td>
											<td>
												<input type="text" id="cashAdvHowOften" name="cashAdvHowOften" value="${memberInfo.otherIncome.otherIncomeList[11].frequency}" />
											</td>
										</tr>
										<tr>
											<td>Gambling Winnings</td>
											<td>												
												<fmt:formatNumber type="currency" var="otherIncome12" value="${memberInfo.otherIncome.otherIncomeList[12].amount}" currencySymbol="" groupingUsed="false" />
												<input type="text" class="formatMoney" id="gamblingWinAmt" name="gamblingWinAmt" value="${otherIncome12}" /></td>
											<td><input type="text" id="gamblingWinHowOften" name="gamblingWinHowOften" value="${memberInfo.otherIncome.otherIncomeList[12].frequency}" /></td>
										</tr>
										<tr>
											<td>Other <input name="otherIncomeOther" type="text" class="width120" id="otherIncomeOther" /></td>
											<td>												
												<fmt:formatNumber type="currency" var="otherIncome13" value="${memberInfo.otherIncome.otherIncomeList[13].amount}" currencySymbol="" groupingUsed="false" />
												<input type="text" class="formatMoney" id="otherAmt" name="otherAmt" value="${otherIncome13}" /></td>
											<td><input type="text" id="otherHowOften" name="otherHowOften" value="${memberInfo.otherIncome.otherIncomeList[13].frequency}" /></td>
											<td>
												<input type="radio" class="radio-button" name="otherTribal" id="otherTribalY" value="true" ${memberInfo.otherIncome.otherIncomeList[13].isTribal == 'true' ? 'checked' : ''} /> <label>Yes</label>
												<input type="radio" class="radio-button" name="otherTribal" id="otherTribalN" value="false" ${memberInfo.otherIncome.otherIncomeList[13].isTribal != 'true' ? 'checked' : ''} /> <label>No</label>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr id="otherIncomeBigQYesRow2" style="display: ${memberInfo.otherIncome.otherIncomeReceived != 'true' ? 'none' : ''}">
								<td width="60%" valign="middle" class="label-bg">Is the income you listed steady from month to month?</td>
								<td width="40%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="isIncomeSteady" id="steadyIncomeY" value="true" onclick="toggleConditionalElement('steadyIncomeNoRow,steadyIncomeNoRow2', false)" ${memberInfo.otherIncome.isIncomeSteady == 'true' ? 'checked' : ''}  /> 
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="isIncomeSteady" id="steadyIncomeN" value="false" onclick="toggleConditionalElement('steadyIncomeNoRow,steadyIncomeNoRow2', true)" ${memberInfo.otherIncome.isIncomeSteady != 'true' ? 'checked' : ''} /> 
									<label for="radio5">No</label></td>
							</tr>
							<tr id="steadyIncomeNoRow" style="display: ${memberInfo.otherIncome.isIncomeSteady != 'true' ? '' : 'none'}">
								<td valign="middle" class="label-bg">Total annual income expected this year</td>
								<td valign="middle" class="field-bg">
									<fmt:formatNumber type="currency" var="expectedIncomeThisYear" value="${memberInfo.otherIncome.expectedIncomeThisYear}" currencySymbol="" groupingUsed="false" />
									<input type="text" name="expectedIncomeThisYear" class="width120 formatMoney" id="expectedIncomeThisYear" value="${expectedIncomeThisYear}" />
								</td>
							</tr>
							<tr id="steadyIncomeNoRow2" style="display: ${memberInfo.otherIncome.isIncomeSteady != 'true' ? '' : 'none'}">
								<td valign="middle" class="label-bg">Total annual income expected next year</td>
								<td valign="middle" class="field-bg">
									<fmt:formatNumber type="currency" var="expectedIncomeNextYear" value="${memberInfo.otherIncome.expectedIncomeNextYear}" currencySymbol="" groupingUsed="false" />
									<input type="text" name="expectedIncomeNextYear" class="width120 formatMoney" id="expectedIncomeNextYear" value="${expectedIncomeNextYear}" />
								</td>
							</tr>
						</table>
						<jsp:include page="template/footer.jsp">
							<jsp:param value="MemberIncome?memberIndex=${param.memberIndex}" name="previousLocation"/>
						</jsp:include>
					</div>
				</td>
				<td>
					<jsp:include page="template/members.jsp">
						<jsp:param value="OtherIncome" name="location" />
					</jsp:include>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>