<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Deductions</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="Deductions">
		<table align="center" width="70%" id="DeductionsMainOuterTable">
			<tr>
				<td id="DeductionsMainOuterTableCell0">
					<div class="content-bg-big" id="DeductionsDivHOH">
						<div align="left" class="main-heading" id="DeductionsMainHeading">Deductions</div>
						<br> <br>
						<div id="DeductionsMainName">&emsp;&emsp;<span id="DeductionsHOHName" style="font-weight: bold; color: black; font-size: 15pt"></span>
						</div>
						<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id="DeductionsHohTable">
							<tr>
								<td width="60%" valign="middle" class="label-bg">Do you
									have any deductions that can be reported on a federal income
									tax return? If you pay for certain things that can be deducted
									on a federal income tax return, telling us about them could
									reduce your countable income. Note: You shouldn't include a
									cost that you already considered in your answer to net
									self-employment.</td>
								<td width="40%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="haveDeductions" id="deductionsBiqQuestionY" value="true" onclick="toggleConditionalElement('deductionsBiqQuestionYesRow', true);" ${memberInfo.deductions.haveDeductions == 'true' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label>
									<input type="radio" class="radio-button" name="haveDeductions" id="deductionsBiqQuestionN" value="false" onclick="toggleConditionalElement('deductionsBiqQuestionYesRow', false);" ${memberInfo.deductions.haveDeductions != 'true' ? 'checked' : ''} /> 
									<label for="radio5">No</label>
								</td>
							</tr>
							<tr style="display: ${memberInfo.deductions.haveDeductions != 'true' ? 'none' : ''};" id="deductionsBiqQuestionYesRow">
								<td>
									<table>
										<thead>
											<tr>
												<th>Type</th>
												<th>Amount</th>
												<th>How Often?</th>
											</tr>
										</thead>
										<tr>
											<td>Educator expenses</td>
											<td>
												<fmt:formatNumber type="currency" var="deductionsAmt0" value="${memberInfo.deductions.deductionsList[0].amount}" currencySymbol="" groupingUsed="false" />
												<input class="width120 formatMoney" type="text" id="educatorExpensesAmt" name="educatorExpensesAmt" value="${deductionsAmt0}">
											</td>
											<td><input type="text" id="educatorExpensesHowOften" name="educatorExpensesHowOften" value="${memberInfo.deductions.deductionsList[0].frequency}"></td>
										</tr>
										<tr>
											<td>Health savings account</td>
											<td>
												<fmt:formatNumber type="currency" var="deductionsAmt1" value="${memberInfo.deductions.deductionsList[1].amount}" currencySymbol="" groupingUsed="false" />
												<input class="width120 formatMoney" type="text" id="healthSavingsAmt" name="healthSavingsAmt" value="${deductionsAmt1}">
											</td>
											<td><input type="text" id="healthSavingsHowOften" name="healthSavingsHowOften" value="${memberInfo.deductions.deductionsList[1].frequency}"></td>
										</tr>
										<tr>
											<td>Moving expenses</td>
											<td>
												
												<fmt:formatNumber type="currency" var="deductionsAmt2" value="${memberInfo.deductions.deductionsList[2].amount}" currencySymbol="" groupingUsed="false" />
												<input class="width120 formatMoney" type="text" id="movingExpAmt" name="movingExpAmt" value="${deductionsAmt2}">
											</td>
											<td><input type="text" id="movingExpHowOften" name="movingExpHowOften" value="${memberInfo.deductions.deductionsList[2].frequency}"></td>
										</tr>
										<tr>
											<td>Alimony</td>
											<td>												
												<fmt:formatNumber type="currency" var="deductionsAmt3" value="${memberInfo.deductions.deductionsList[3].amount}" currencySymbol="" groupingUsed="false" />
												<input class="width120 formatMoney" type="text" id="alimonyAmt" name="alimonyAmt" value="${deductionsAmt3}"></td>
											<td><input type="text" id="alimonyHowOften" name="alimonyHowOften" value="${memberInfo.deductions.deductionsList[3].frequency}"></td>
										</tr>
										<tr>
											<td>IRA deductions</td>
											<td>												
												<fmt:formatNumber type="currency" var="deductionsAmt4" value="${memberInfo.deductions.deductionsList[4].amount}" currencySymbol="" groupingUsed="false" />
												<input class="width120 formatMoney" type="text" id="IRAAmt" name="IRAAmt" value="${deductionsAmt4}">
											</td>
											<td><input type="text" id="IRAHowOften" name="IRAHowOften" value="${memberInfo.deductions.deductionsList[4].frequency}"></td>
										</tr>
										<tr>
											<td>Business expenses of reservists, performing artists, and fee-basis government officials</td>
											<td>												
												<fmt:formatNumber type="currency" var="deductionsAmt5" value="${memberInfo.deductions.deductionsList[5].amount}" currencySymbol="" groupingUsed="false" />
												<input class="width120 formatMoney" type="text" id="businessExpAmt" name="businessExpAmt" value="${deductionsAmt5}">
											</td>
											<td><input type="text" id="businessExpHowOften" name="businessExpHowOften" value="${memberInfo.deductions.deductionsList[5].frequency}"></td>
										</tr>
										<tr>
											<td>Penalty paid on early withdrawal of savings</td>
											<td>												
												<fmt:formatNumber type="currency" var="deductionsAmt6" value="${memberInfo.deductions.deductionsList[6].amount}" currencySymbol="" groupingUsed="false" />
												<input class="width120 formatMoney" type="text" id="penaltyPaidAmt" name="penaltyPaidAmt" value="${deductionsAmt6}">
											</td>
											<td><input type="text" id="penaltyPaidHowOften" name="penaltyPaidHowOften" value="${memberInfo.deductions.deductionsList[6].frequency}"></td>
										</tr>
										<tr>
											<td>Student loan interest</td>
											<td>												
												<fmt:formatNumber type="currency" var="deductionsAmt7" value="${memberInfo.deductions.deductionsList[7].amount}" currencySymbol="" groupingUsed="false" />
												<input class="width120 formatMoney" type="text" id="studentLoanIntAmt" name="studentLoanIntAmt" value="${deductionsAmt7}">
											</td>
											<td><input type="text" id="studentLoanIntHowOften" name="studentLoanIntHowOften" value="${memberInfo.deductions.deductionsList[7].frequency}"></td>
										</tr>
										<tr>
											<td>Tuition and fees</td>
											<td>												
												<fmt:formatNumber type="currency" var="deductionsAmt8" value="${memberInfo.deductions.deductionsList[8].amount}" currencySymbol="" groupingUsed="false" />
												<input class="width120 formatMoney" type="text" id="tuitionAmt" name="tuitionAmt" value="${deductionsAmt8}">
											</td>
											<td><input type="text" id="tuitionHowOften" name="tuitionHowOften" value="${memberInfo.deductions.deductionsList[8].frequency}"></td>
										</tr>
										<tr>
											<td>Domestic production activities</td>
											<td>												
												<fmt:formatNumber type="currency" var="deductionsAmt9" value="${memberInfo.deductions.deductionsList[9].amount}" currencySymbol="" groupingUsed="false" />
												<input class="width120 formatMoney" type="text" id="domesticProdActAmt" name="domesticProdActAmt" value="${deductionsAmt9}">
											</td>
											<td><input type="text" id="domesticProdActHowOften" name="domesticProdActHowOften" value="${memberInfo.deductions.deductionsList[9].frequency}"></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
						<jsp:include page="template/footer.jsp">
							<jsp:param value="OtherIncome?memberIndex=${param.memberIndex}" name="previousLocation"/>
						</jsp:include>
					</div>
				</td>
				<td>
					<jsp:include page="template/members.jsp">
						<jsp:param value="Deductions" name="location" />
					</jsp:include>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>