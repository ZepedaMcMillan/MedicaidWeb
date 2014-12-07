<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
									<input type="radio" class="radio-button" name="otherIncomeReceived" id="otherIncomeBigQuestionY" value="y" onclick="toggleConditionalElement('otherIncomeBigQYesRow,otherIncomeBigQYesRow2', true)" ${memberInfo.otherIncome.otherIncomeReceived == 'y' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label>
									<input type="radio" class="radio-button" name="otherIncomeReceived" id="otherIncomeBigQuestionN" value="n" onclick="toggleConditionalElement('otherIncomeBigQYesRow,otherIncomeBigQYesRow2', false)" ${memberInfo.otherIncome.otherIncomeReceived != 'y' ? 'checked' : ''} /> 
									<label for="radio5">No</label></td>
							</tr>
							<tr id="otherIncomeBigQYesRow" style="display: ${memberInfo.otherIncome.otherIncomeReceived != 'y' ? 'none' : ''}">
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
											<td><input type="text" class="formatMoney" id="unemploymentAmt" name="unemploymentAmt" value="${memberInfo.otherIncome.otherIncomeList[0].amount}" /></td>
											<td><input type="text" id="unemploymentHowOften" name="unemploymentHowOften" value="${memberInfo.otherIncome.otherIncomeList[0].frequency}" /></td>
											<td>&emsp;&emsp;</td>
										</tr>
										<tr>
											<td>Retirement</td>
											<td><input type="text" class="formatMoney" id="retirementAmt" name="retirementAmt" value="${memberInfo.otherIncome.otherIncomeList[1].amount}" /></td>
											<td><input type="text" id="retirementHowOften" name="retirementHowOften" value="${memberInfo.otherIncome.otherIncomeList[1].frequency}" /></td>
											<td>&emsp;&emsp;</td>
										</tr>
										<tr>
											<td>Pensions</td>
											<td><input type="text" class="formatMoney" id="pensionsAmt" name="pensionsAmt" value="${memberInfo.otherIncome.otherIncomeList[2].amount}" /></td>
											<td><input type="text" id="pensionsHowOften" name="pensionsHowOften" value="${memberInfo.otherIncome.otherIncomeList[2].frequency}" /></td>
											<td>&emsp;&emsp;</td>
										</tr>
										<tr>
											<td>Social Security (RSDI) Benefits</td>
											<td><input type="text" class="formatMoney" id="ssBenefitsAmt" name="ssBenefitsAmt" value="${memberInfo.otherIncome.otherIncomeList[3].amount}" /></td>
											<td><input type="text" id="ssBenefitsHowOften" name="ssBenefitsHowOften" value="${memberInfo.otherIncome.otherIncomeList[3].frequency}" /></td>
											<td>&emsp;&emsp;</td>
										</tr>
										<tr>
											<td>Interest/Dividends</td>
											<td><input type="text" class="formatMoney" id="intDividentsAmt" name="intDividentsAmt" value="${memberInfo.otherIncome.otherIncomeList[4].amount}" /></td>
											<td><input type="text" id="intDividentsHowOften" name="intDividentsHowOften" value="${memberInfo.otherIncome.otherIncomeList[4].frequency}" /></td>
											<td>
												<input type="radio" class="radio-button" name="interestDividendsTribal" id="interestDividendsY" value="y" ${memberInfo.otherIncome.otherIncomeList[4].isTribal == 'y' ? 'checked' : ''} /> <label for="interestDividendsY">Yes</label>
												<input type="radio" class="radio-button" name="interestDividendsTribal" id="interestDividendsN" value="n" ${memberInfo.otherIncome.otherIncomeList[4].isTribal != 'y' ? 'checked' : ''} /> <label for="interestDividendsN">No</label>
											</td>
										</tr>
										<tr>
											<td>Annuities</td>
											<td>
												<input type="text" class="formatMoney" id="annuitiesAmt" name="annuitiesAmt" value="${memberInfo.otherIncome.otherIncomeList[5].amount}">
											</td>
											<td>
												<input type="text" id="annuitiesHowOften" name="annuitiesHowOften" value="${memberInfo.otherIncome.otherIncomeList[5].frequency}" />
											</td>
											<td>
												<input type="radio" class="radio-button" name="annuitiesTribal" id="annuitiesY" value="y" ${memberInfo.otherIncome.otherIncomeList[5].isTribal == 'y' ? 'checked' : ''} /> <label>Yes</label>
												<input type="radio" class="radio-button" name="annuitiesTribal" id="annuitiesN" value="n" ${memberInfo.otherIncome.otherIncomeList[5].isTribal != 'y' ? 'checked' : ''} /> <label>No</label>
											</td>
										</tr>
										<tr>
											<td>Rental or Royalty Income</td>
											<td>
												<input type="text" class="formatMoney" id="rentalRoyaltyAmt" name="rentalRoyaltyAmt" value="${memberInfo.otherIncome.otherIncomeList[6].amount}">
											</td>
											<td>
												<input type="text" id="rentalRoyaltyHowOften" name="rentalRoyaltyHowOften" value="${memberInfo.otherIncome.otherIncomeList[6].frequency}" />
											</td>
											<td>
												<input type="radio" class="radio-button" name="rentalRoyaltyTribal" id="rentalRoyaltyY" value="y" ${memberInfo.otherIncome.otherIncomeList[6].isTribal == 'y' ? 'checked' : ''} /> <label>Yes</label>
												<input type="radio" class="radio-button" name="rentalRoyaltyTribal" id="rentalRoyaltyN" value="n" ${memberInfo.otherIncome.otherIncomeList[6].isTribal != 'y' ? 'checked' : ''} /> <label>No</label>
											</td>
										</tr>
										<tr>
											<td>Capital Gains</td>
											<td>
												<input type="text" class="formatMoney" id="capitalGainsAmt" name="capitalGainsAmt" value="${memberInfo.otherIncome.otherIncomeList[7].amount}">
											</td>
											<td>
												<input type="text" id="capitalGainsHowOften" name="capitalGainsHowOften" value="${memberInfo.otherIncome.otherIncomeList[7].frequency}" />
											</td>
											<td>
												<input type="radio" class="radio-button" name="capitalGainsTribal" id="capitalGainsTribalY" value="y" ${memberInfo.otherIncome.otherIncomeList[7].isTribal == 'y' ? 'checked' : ''} /> <label>Yes</label>
												<input type="radio" class="radio-button" name="capitalGainsTribal" id="capitalGainsTribalN" value="n" ${memberInfo.otherIncome.otherIncomeList[7].isTribal != 'y' ? 'checked' : ''} /> <label>No</label>
											</td>
										</tr>
										<tr>
											<td>Farming or Fishing Income</td>
											<td>
												<input type="text" class="formatMoney" id="farmFishAmt" name="farmFishAmt" value="${memberInfo.otherIncome.otherIncomeList[8].amount}">
											</td>
											<td>
												<input type="text" id="farmFishHowOften" name="farmFishHowOften" value="${memberInfo.otherIncome.otherIncomeList[8].frequency}" />
											</td>
											<td>
												<input type="radio" class="radio-button" name="farmFishTribal" id="farmFishTribalY" value="y" ${memberInfo.otherIncome.otherIncomeList[8].isTribal == 'y' ? 'checked' : ''} /> <label>Yes</label>
												<input type="radio" class="radio-button" name="farmFishTribal" id="farmFishTribalN" value="n" ${memberInfo.otherIncome.otherIncomeList[8].isTribal != 'y' ? 'checked' : ''} /> <label>No</label>
											</td>
										</tr>
										<tr>
											<td>Alimony</td>
											<td>
												<input type="text" class="formatMoney" id="alimonyAmt" name="alimonyAmt" value="${memberInfo.otherIncome.otherIncomeList[9].amount}" />
											</td>
											<td>
												<input type="text" id="alimonyHowOften" name="alimonyHowOften"  value="${memberInfo.otherIncome.otherIncomeList[9].frequency}" />
											</td>
											<td>&emsp;&emsp;</td>
										</tr>
										<tr>
											<td>Scholarship Grants</td>
											<td>
												<input type="text" class="formatMoney" id="scholarshipAmt" name="scholarshipAmt" value="${memberInfo.otherIncome.otherIncomeList[10].amount}" />
											</td>
											<td>
												<input type="text" id="scholarshipHowOften" name="scholarshipHowOften" value="${memberInfo.otherIncome.otherIncomeList[10].frequency}" />
											</td>
											<td>
												<input type="radio" class="radio-button" name="scholarshipTribal" id="scholarshipTribalY" value="y" ${memberInfo.otherIncome.otherIncomeList[10].isTribal == 'y' ? 'checked' : ''} /> <label>Yes</label>
												<input type="radio" class="radio-button" name="scholarshipTribal" id="scholarshipTribalN" value="n" ${memberInfo.otherIncome.otherIncomeList[10].isTribal != 'y' ? 'checked' : ''} /> <label>No</label>
											</td>
										</tr>
										<tr>
											<td>Cash Advances</td>
											<td>
												<input type="text" class="formatMoney" id="cashAdvAmt" name="cashAdvAmt" value="${memberInfo.otherIncome.otherIncomeList[11].amount}" />
											</td>
											<td>
												<input type="text" id="cashAdvHowOften" name="cashAdvHowOften" value="${memberInfo.otherIncome.otherIncomeList[11].frequency}" /></td>
											<td>
												<input type="radio" class="radio-button" name="cashAdvanceTribal" id="cashAdvanceTribalY" value="y" ${memberInfo.otherIncome.otherIncomeList[11].isTribal == 'y' ? 'checked' : ''} /> <label>Yes</label>
												<input type="radio" class="radio-button" name="cashAdvanceTribal" id="cashAdvanceTribalN" value="n" ${memberInfo.otherIncome.otherIncomeList[11].isTribal != 'y' ? 'checked' : ''} /> <label>No</label>
											</td>
										</tr>
										<tr>
											<td>Gambling Winnings</td>
											<td><input type="text" class="formatMoney" id="gamblingWinAmt" name="gamblingWinAmt" value="${memberInfo.otherIncome.otherIncomeList[12].amount}" /></td>
											<td><input type="text" id="gamblingWinHowOften" name="gamblingWinHowOften" value="${memberInfo.otherIncome.otherIncomeList[12].frequency}" /></td>
											<td>
												<input type="radio" class="radio-button" name="gamblingWinTribal" id="gamblingWinTribalY" value="y" ${memberInfo.otherIncome.otherIncomeList[12].isTribal == 'y' ? 'checked' : ''} /> <label>Yes</label>
												<input type="radio" class="radio-button" name="gamblingWinTribal" id="gamblingWinTribalN" value="n" ${memberInfo.otherIncome.otherIncomeList[12].isTribal != 'y' ? 'checked' : ''} /> <label>No</label>
											</td>
										</tr>
										<tr>
											<td>Other <input name="otherIncomeOther" type="text" class="width120" id="otherIncomeOther" /></td>
											<td><input type="text" class="formatMoney" id="otherAmt" name="otherAmt" value="${memberInfo.otherIncome.otherIncomeList[13].amount}" /></td>
											<td><input type="text" id="otherHowOften" name="otherHowOften" value="${memberInfo.otherIncome.otherIncomeList[13].frequency}" /></td>
											<td>
												<input type="radio" class="radio-button" name="otherTribal" id="otherTribalY" value="y" ${memberInfo.otherIncome.otherIncomeList[13].isTribal == 'y' ? 'checked' : ''} /> <label>Yes</label>
												<input type="radio" class="radio-button" name="otherTribal" id="otherTribalN" value="n" ${memberInfo.otherIncome.otherIncomeList[13].isTribal != 'y' ? 'checked' : ''} /> <label>No</label>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr id="otherIncomeBigQYesRow2" style="display: ${memberInfo.otherIncome.otherIncomeReceived != 'y' ? 'none' : ''}">
								<td width="60%" valign="middle" class="label-bg">Is the income you listed steady from month to month?</td>
								<td width="40%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="isIncomeSteady" id="steadyIncomeY" value="y" onclick="toggleConditionalElement('steadyIncomeNoRow,steadyIncomeNoRow2', false)" ${memberInfo.otherIncome.isIncomeSteady == 'y' ? 'checked' : ''}  /> 
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="isIncomeSteady" id="steadyIncomeN" value="n" onclick="toggleConditionalElement('steadyIncomeNoRow,steadyIncomeNoRow2', true)" ${memberInfo.otherIncome.isIncomeSteady != 'y' ? 'checked' : ''} /> 
									<label for="radio5">No</label></td>
							</tr>
							<tr id="steadyIncomeNoRow" style="display: ${memberInfo.otherIncome.isIncomeSteady != 'y' ? '' : 'none'}">
								<td valign="middle" class="label-bg">Total annual income expected this year</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="expectedIncomeThisYear" class="width120 formatMoney" id="expectedIncomeThisYear" value="${memberInfo.otherIncome.expectedIncomeThisYear}" />
								</td>
							</tr>
							<tr id="steadyIncomeNoRow2" style="display: ${memberInfo.otherIncome.isIncomeSteady != 'y' ? '' : 'none'}">
								<td valign="middle" class="label-bg">Total annual income expected next year</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="expectedIncomeNextYear" class="width120 formatMoney" id="expectedIncomeNextYear" value="${memberInfo.otherIncome.expectedIncomeNextYear}" />
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