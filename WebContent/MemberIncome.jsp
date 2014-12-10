<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Income</title>
<jsp:include page="template/resources.jsp" />
<script type="text/javascript">
	$(function() {
		var mainForm = $('#mainForm'),
		    customAction = $('#customAction'),
		    itemIndex = $('#itemIndex'),
		    deleteAction = $('#deleteAction');
		    
		$("#addEmployment").button().on( "click", function() {
			customAction.val('editIncome');
			mainForm.submit();
		});		
		
		$(".btnUpdate").on( "click", function(event) {
			var id = event.target.id,
				el = $('#' + id);
					
			customAction.val('editIncome');
			itemIndex.val(el.attr('data-index'));
			
			mainForm.submit();
		});		
		
		$(".btnDelete").on( "click", function(event) {
			var id = event.target.id,
				el = $('#' + id);
					
			var conf = confirm("Are you sure you want to delete this Household Member?");
			if(conf) {	
				customAction.val('deleteIncome');
				itemIndex.val(el.attr('data-index'));
				
				mainForm.submit();
			}
		});	
	});
  </script>
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="MemberIncome">
		<input type="hidden" name="memberIndex" id="memberIndex" value="${memberIndex}" />
		<input type="hidden" name="itemIndex" id="itemIndex" value="" />
		<input type="hidden" name="customAction" id="customAction" value="" />
		<table align="center" width="70%" id="MemberIncomeMainOuterTable">
			<tr>
				<td id="MemberIncomeMainOuterTableCell0">
					<div class="content-bg-big" id="MemberIncomeDivHOH">
						<div align="left" class="main-heading" id="MemberIncomeMainHeading">Member Income</div>
						<div id="MemberIncomeMainName">&emsp;&emsp;<span id="MemberIncomeHOHName" style="font-weight: bold; color: black; font-size: 15pt"></span>
						</div>
						<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="40%" valign="middle" class="label-bg">In the past three months did you</td>
								<td width="60%" class="field-bg">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="20%">
												<label for="inThePastThreeMonths">Change Jobs&emsp;&emsp;&nbsp;&nbsp;</label>
											</td>
											<td>
												<input class="radio-button" type="checkbox" name="pastThreeMonths" id="inThePastThreeMonthsChangeJobs" value="changeJobs" ${changeJobs} />
											</td>
										</tr>
										<tr>
											<td>
												<label for="inThePastThreeMonths">Stop Working&emsp;&emsp;&nbsp;</label>
											</td>
											<td>											
												<input class="radio-button" type="checkbox" name="pastThreeMonths" id="inThePastThreeMonthsStopWorking" value="stopWorking" ${stopWorking} />
											</td>
										</tr>
										<tr>
											<td>
												<label for="inThePastThreeMonths">Work Fewer Hours</label>
											</td>
											<td>											
												<input class="radio-button" type="checkbox" name="pastThreeMonths" id="inThePastThreeMonthsWorkFewerHours" value="workFewerHours" ${workFewerHours}  />
											</td>
										</tr>
										<tr>
											<td>
												<label for="noneOfThese">None of these&emsp;&emsp;</label>
											</td>
											<td>											
												<input class="radio-button" type="checkbox" name="pastThreeMonths" id="inThePastThreeMonthsNoneOfThese" value="noneOfThese" ${noneOfThese} />
											</td>
										</tr>
									</table>									
								</td>
							</tr>
							<tr>
								<td width="40%" valign="middle" class="label-bg">Are you currently employed?</td>
								<td width="60%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="isEmployed" id="currentlyEmployedY" value="true" onclick="toggleConditionalElement('currentlyEmployedYes', true);" ${incomeInfo.isEmployed == 'true' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label>
									<input type="radio" class="radio-button" name="isEmployed" id="currentlyEmployedN" value="false" onclick="toggleConditionalElement('currentlyEmployedYes', true);" ${incomeInfo.isEmployed != 'true' ? 'checked' : ''} /> 
									<label for="radio5">No</label></td>
							</tr>			
							<tr id="currentlyEmployedYesButton" style="display: none;">
								<td>
									
								</td>
							</tr>
						</table>
						<div id="currentlyEmployedYes"  style="display: ${incomeInfo.isEmployed != 'true' ? 'none' : ''};">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" class="form-container">
								<tr>
									<td width="20%" valign="middle" class="label-bg">
										<input type="button" class="ui-button ui-widget ui-state-default ui-corner-all" id="addEmployment" name="addEmployment" value="Add Employment" width="50" />
									</td>
									<td width="80%" valign="middle" class="field-bg">
										<table id="incomeInfoTable" width="100%" cellspacing="3">
											<tr>
												<td width="15%"><font size="3" color="#0B0B61">Employer</font></td>
												<td width="15%"><font size="3" color="#0B0B61">Address</font></td>
												<td width="15%"><font size="3" color="#0B0B61">Pay Frequency</font></td>
												<td width="10%"><font size="3" color="#0B0B61">Actions</font></td>
											</tr>
											<c:forEach items="${incomeInfo.incomeInfoList}" var="item" varStatus="loop">								
												<tr>
											        <td width="15%">${item.employerName}</td>
											        <td width="15%">${item.employerAddress.street}</td>
											        <td width="15%">${item.payFrequency}</td>
											        <td width="15%">
											        	<input id="incomeItemBtnUpdate${loop.index}" class="btnUpdate itemCommandBtn" type="button" value="update" data-index="${loop.index}" />
											        	<input id="incomeItemBtnDelete${loop.index}"  class="btnDelete itemCommandBtn" type="button" value="delete" data-index="${loop.index}" />
											        </td>
											  	</tr>
										    </c:forEach>
										</table>
									</td>
								</tr>
							</table>
						</div>
						<jsp:include page="template/footer.jsp">
							<jsp:param value="OtherAssistance?memberIndex=${param.memberIndex}" name="previousLocation"/>
						</jsp:include>
					</div>
				</td>
				<td>
					<jsp:include page="template/members.jsp">
						<jsp:param value="MemberIncome" name="location" />
					</jsp:include>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>