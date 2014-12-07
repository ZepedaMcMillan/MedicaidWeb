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
	
  /*$(function() {
    var dialog, form,
    	employerName = $("#employerName"),
    	address = $("#address"),
    	city = $("#city"),
    	state = $('#state'),
    	zip = $("#zip"),
    	employerPhone = $('#employerPhone'),
    	weekHoursWorked = $('#weekHoursWorked'),
    	wagesPerPayPeriod = $('#wagesPerPayPeriod'),
    	payFrequency = $("input[name='payFrequency']"),
    	isSelfEmployed = $('#isSelfEmployed'),
    	typeOfWork = $('#typeOfWork'),
    	monthlyNetIncome = $('#monthlyNetIncome'),
    	mainForm = $("#mainForm");
 
    function addItem() {
 		var incomeInfo = new Object();
 		incomeInfo.employerName = employerName.val();
 		incomeInfo.employerPhone = employerPhone.val();
 		incomeInfo.weekHoursWorked = weekHoursWorked.val();
 		incomeInfo.wagesPerPayPeriod = wagesPerPayPeriod.val();
 		incomeInfo.payFrequency = $("input:radio[name='payFrequency']:checked").val();
 		incomeInfo.isSelfEmployed = isSelfEmployed.val();
 		incomeInfo.monthlyNetIncome = monthlyNetIncome.val();
 		incomeInfo.typeOfWork = typeOfWork.val();
 		incomeInfo.employerAddress = new Object();
 		incomeInfo.employerAddress.address = address.val();
 		incomeInfo.employerAddress.city = city.val();
 		incomeInfo.employerAddress.state = state.val();
 		incomeInfo.employerAddress.zip = zip.val();
 		
 		$.ajax({
	        url: "editMemberIncome?memberIndex=" + $('#memberIndex').val(),
	        type: 'POST',
	        dataType: 'json',
	        data: JSON.stringify(incomeInfo),
	        contentType: 'application/json',
	        mimeType: 'application/json',
	 
	        success: function () {
	        	dialog.dialog( "close" );
	        	$('#customAction').val('update')
	        	mainForm.submit();
	        },
	        error:function(data,status,er) {
	            alert("error: "+data+" status: "+status+" er:"+er);
	        }
	    });
    }
 
    dialog = $( "#dialog-form" ).dialog({
      autoOpen: false,
      height: 300,
      width: 500,
      modal: true,
      buttons: {
        "Add Employer": addItem,
        Cancel: function() {
          dialog.dialog( "close" );
        }
      },
      close: function() {
        form[ 0 ].reset();
      }
    });
 
    form = dialog.find( "form" ).on( "submit", function( event ) {
      event.preventDefault();
      addItem();
    });
 
    $( "#addEmployment" ).button().on( "click", function() {
      dialog.dialog( "open" );
    });
  });*/
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
									<label for="inThePastThreeMonths">Change Jobs&emsp;&emsp;&nbsp;&nbsp;</label>
									<input type="checkbox" name="pastThreeMonths" id="inThePastThreeMonthsChangeJobs" value="changeJobs" ${changeJobs} /><br> 
									<label for="inThePastThreeMonths">Stop Working&emsp;&emsp;&nbsp;</label>
									<input type="checkbox" name="pastThreeMonths" id="inThePastThreeMonthsStopWorking" value="stopWorking" ${stopWorking} /><br>
									<label for="inThePastThreeMonths">Work Fewer Hours</label>
									<input type="checkbox" name="pastThreeMonths" id="inThePastThreeMonthsWorkFewerHours" value="workFewerHours" ${workFewerHours}  /><br>
									<label for="noneOfThese">None of these&emsp;&emsp;</label>
									<input type="checkbox" name="pastThreeMonths" id="inThePastThreeMonthsNoneOfThese" value="noneOfThese" ${noneOfThese} /><br>
								</td>
							</tr>
							<tr>
								<td width="40%" valign="middle" class="label-bg">Are you currently employed?</td>
								<td width="60%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="isEmployed" id="currentlyEmployedY" value="y" onclick="toggleConditionalElement('currentlyEmployedYes', true);" ${incomeInfo.isEmployed == 'y' ? 'checked' : ''} /> 
									<label for="radio5">Yes</label>
									<input type="radio" class="radio-button" name="isEmployed" id="currentlyEmployedN" value="n" onclick="toggleConditionalElement('currentlyEmployedYes', true);" ${incomeInfo.isEmployed != 'y' ? 'checked' : ''} /> 
									<label for="radio5">No</label></td>
							</tr>			
							<tr id="currentlyEmployedYesButton" style="display: none;">
								<td>
									
								</td>
							</tr>
						</table>
						<div id="currentlyEmployedYes"  style="display: ${incomeInfo.isEmployed != 'y' ? 'none' : ''};">
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
	<div id="dialog-form" title="Add Member Income" style="display:none;">
		<p class="validateTips">All form fields are required.</p>
		
		<form>
			<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">	
				<tr>
					<td colspan="2">
						<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id="employmentDetailsTable">
			
							<tr>
								<td valign="middle" class="label-bg">What is the name of your Employer?</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="employerName" class="width120" id="employerName" class="width120" />
								</td>
							</tr>
			
							<tr>
								<td valign="middle" class="label-bg">What is the address of your Employer?</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="address" class="width120" id="employerAddr" /> <br> 
									<div class="small-label">Address</div> 
									<input name="city" type="text" id="city" maxlength="50" class="width120" /><br />
									<div class="small-label">City</div> 
									<select name="state" class="width120" id="state">
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
									</select> <br />
									<div class="small-label">State</div>
									<input type="text" name="zip" id="zip" class="width120" /><br />
									<div class="small-label">Zip</div></td>
							</tr>
							<tr>
								<td valign="middle" class="label-bg">What is the phone number of your Employer?</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="employerPhone" id="employerPhone" class="width120 formatPhone" />
								</td>
							</tr>
							<tr>
								<td valign="middle" class="label-bg">What is the average hours worked per week?</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="weekHoursWorked" id="weekHoursWorked" class="width120" />
								</td>
							</tr>
							<tr>
								<td valign="middle" class="label-bg">What is the gross wages/tips per pay period?</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="wagesPerPayPeriod" id="wagesPerPayPeriod" class="width120 formatMoney" /></td>
							</tr>
							<tr>
								<td width="60%" valign="middle" class="label-bg">How often are you paid?</td>
								<td width="40%" valign="middle" class="field-bg">
									<table>
										<tr>
											<td><label for="payFrequency">Weekly</label></td>
											<td><input type="radio" name="payFrequency" id="payFrequencyWeekly" value="Weekly" /></td>
										</tr>
										<tr>
											<td><label for="payFrequency">Every Two Weeks</label>
											</td>
											<td><input type="radio" name="payFrequency" id="payFrequencyBiWeekly" value="Bi-weekly" /></td>
										</tr>
										<tr>
											<td><label for="payFrequency">Semi Monthly</label></td>
											<td><input type="radio" name="payFrequency" id="payFrequencySemiMonthly" value="Semi-monthly" /></td>
										</tr>
										<tr>
											<td><label for="payFrequency">Monthly</label></td>
											<td><input type="radio" name="payFrequency" id="payFrequencyMonthly" value="Monthly" /></td>
										</tr>
										<tr>
											<td><label for="payFrequency">Annually</label></td>
											<td><input type="radio" name="payFrequency" id="payFrequencyAnnually" value="Annually" /></td>
										</tr>
									</table>
								</td>
							</tr>
			
							<tr>
								<td width="60%" valign="middle" class="label-bg">Are you self employed?</td>
								<td width="40%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="isSelfEmployed" id="selfEmployedY" value="y" onclick="toggleConditionalElement('selfEmployedYesRow', true)" />
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="isSelfEmployed" id="selfEmployedN" value="n" onclick="toggleConditionalElement('selfEmployedYesRow', false)" checked /> 
									<label for="radio5">No</label>
								</td>
							</tr>
							<tr id="selfEmployedYesRow" style="display: none">
								<td valign="middle" class="label-bg">What is your type of work?</td>
								<td valign="middle" class="field-bg">
									<input type="text" name="typeOfWork" class="width120" id="typeOfWork" />
								</td>
								<td valign="middle" class="label-bg">How much net income (profits once expenses are paid) will you receive this month?</td>
								<td valign="middle" class="field-bg">
									<input type="number" name="monthlyNetIncome" class="width120" id="monthlyNetIncome" />
								</td>
							</tr>
			
						</table>
					</td>
				</tr>
			</table>
		</form>
	  </div>
</body>
</html>