<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Other Health Insurance</title>
<jsp:include page="template/resources.jsp" />

<script type="text/javascript">
	$(function() {
	  var mainForm = $("#mainForm"),
	  	  customAction = $('#customAction'),
	  	  itemIndex = $('#itemIndex');
	  
		$( "#addOtherInsurance" ).button().on( "click", function() {
		   	customAction.val('edit');
		   	mainForm.submit();
		});	
		
		$(".btnUpdate").on( "click", function(event) {
			var id = event.target.id,
				el = $('#' + id);
					
			customAction.val('edit');
			itemIndex.val(el.attr('data-index'));
			
			mainForm.submit();
		});		
		
		$(".btnDelete").on( "click", function(event) {
			var id = event.target.id,
				el = $('#' + id);
			
			var conf = confirm("Are you sure you want to delete this Insurance?");
			if(conf) {					
				customAction.val('delete');
				itemIndex.val(el.attr('data-index'));
				
				mainForm.submit();
			}
		});	  
	});
</script>
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="OtherHealthInsurance">	
		<input type="hidden" name="customAction" id="customAction" value="" />		
		<input type="hidden" name="itemIndex" id="itemIndex" value="" />		
		<div class="content-bg-big">
			<div align="left" class="main-heading">Other Health Insurance Information</div>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0" id="OtherHITable">
				<tr>
					<td width="60%" valign="middle" class="label-bg">Does anyone
						have other health insurance, including Veterans, Medicaid/Nevada
						Check-Up, Medicare, COBRA, Private, or other Retiree Health Plan?
					</td>
					<td valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="hasOtherInsurance" id="otherHealthInsuranceY" value="true" onclick="toggleConditionalElement('otherHealhInsuranceRow', true)" ${otherInsurance.hasOtherInsurance ? 'checked' : ''} /> 
						<label for="otherHealthInsurance">Yes</label> 
						<input type="radio" class="radio-button" name="hasOtherInsurance" id="otherHealthInsuranceN" value="false" onclick="toggleConditionalElement('otherHealhInsuranceRow', true)" ${!otherInsurance.hasOtherInsurance ? 'checked' : ''} /> 
						<label for="otherHealthInsurance">No</label></td>
				</tr>
			</table>
			<div id="otherHealhInsuranceRow"  style="display:  ${!otherInsurance.hasOtherInsurance ? 'none' : ''};">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="form-container">
					<tr>
						<td width="20%" valign="middle" class="label-bg">
							<input type="button" id="addOtherInsurance" name="addOtherInsurance" value="Add Insurance" />
						</td>
						<td width="80%" valign="middle" class="field-bg">
							<table id="incomeInfoTable" width="100%" cellspacing="3">
								<tr>
									<td width="15%"><font size="3" color="#0B0B61">Name<span>*</span></font></td>
									<td width="15%"><font size="3" color="#0B0B61">Type</font></td>
									<td width="15%"><font size="3" color="#0B0B61">Plan Name<span>*</span></font></td>
									<td width="15%"><font size="3" color="#0B0B61">Policy Number<span>*</span></font></td>
									<td width="40%"><font size="3" color="#0B0B61">Actions</font></td>
								</tr>
								<c:forEach items="${otherInsurance.otherInsuranceDetails}" var="item" varStatus="loop">								
									<tr>
								        <td width="15%">${item.name}</td>
								        <td width="15%">${item.insuranceType}</td>
								        <td width="15%">${item.planName}</td>
								        <td width="15%">${item.policyNumber}</td>
								        <td width="40%">
										  	<input id="memberItemBtnUpdate${loop.index}" class="btnUpdate itemCommandBtn" type="button" value="update" data-index="${loop.index}" />
											<input id="memberItemBtnDelete${loop.index}"  class="btnDelete itemCommandBtn" type="button" value="delete" data-index="${loop.index}" />
										</td>
								  	</tr>
							    </c:forEach>
							</table>
						</td>
					</tr>
				</table>
			</div>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="HealthInsuranceInformation" name="previousLocation"/>
			</jsp:include>
		</div>
	</form>
</body>
</html>