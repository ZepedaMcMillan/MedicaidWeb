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
    var dialog, form,
    	insName = $("#name"),
    	insType = $("#insuranceType"),
    	planName = $("#planName"),
    	policyNumber = $('#policyNumber')
    	mainForm = $("#mainForm");
 
    function addItem() {
 		var insuranceItem = new Object();
 		insuranceItem.name = insName.val();
 		insuranceItem.insuranceType = insType.val();
 		insuranceItem.planName = planName.val();
 		insuranceItem.policyNumber = policyNumber.val(); 		
 		
 		$.ajax({
	        url: "editOtherInsurance",
	        type: 'POST',
	        dataType: 'json',
	        data: JSON.stringify(insuranceItem),
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
        "Add Other Insurance": addItem,
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
 
    $('#otherInsuranceButton').button().on( "click", function() {
      dialog.dialog( "open" );
    });
  });
  </script>
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="OtherHealthInsurance">	
		<input type="hidden" name="customAction" id="customAction" value="" />	
		<div class="content-bg-big">
			<div align="left" class="main-heading">Other Health Insurance Information</div>
			<br> <br>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0" id="OtherHITable">
				<tr>
					<td width="60%" valign="middle" class="label-bg">Does anyone
						have other health insurance, including Veterans, Medicaid/Nevada
						Check-Up, Medicare, COBRA, Private, or other Retiree Health Plan?
					</td>
					<td valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="hasOtherInsurance" id="otherHealthInsuranceY" value="y" onclick="toggleConditionalElement('otherHealhInsuranceRow', true)" ${otherInsurance.hasOtherInsurance == 'y' ? 'checked' : ''} /> 
						<label for="otherHealthInsurance">Yes</label> 
						<input type="radio" class="radio-button" name="hasOtherInsurance" id="otherHealthInsuranceN" value="n" onclick="toggleConditionalElement('otherHealhInsuranceRow', true)" ${otherInsurance.hasOtherInsurance != 'y' ? 'checked' : ''} /> 
						<label for="otherHealthInsurance">No</label></td>
				</tr>
			</table>
			<div id="otherHealhInsuranceRow"  style="display:  ${otherInsurance.hasOtherInsurance != 'y' ? 'none' : ''};">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="form-container">
					<tr>
						<td width="20%" valign="middle" class="label-bg">
							<input type="button" id="otherInsuranceButton" name="otherInsuranceButton" value="Add Insurance" />
						</td>
						<td width="80%" valign="middle" class="field-bg">
							<table id="incomeInfoTable" width="100%" cellspacing="3">
								<tr>
									<td width="15%"><font size="3" color="#0B0B61">Name<span>*</span></font></td>
									<td width="15%"><font size="3" color="#0B0B61">Type</font></td>
									<td width="15%"><font size="3" color="#0B0B61">Plan Name<span>*</span></font></td>
									<td width="15%"><font size="3" color="#0B0B61">Policy Number<span>*</span></font></td>
									<td width="10%"><font size="3" color="#0B0B61">Delete</font></td>
								</tr>
								<c:forEach items="${otherInsurance.otherInsuranceDetails}" var="item" varStatus="loop">								
									<tr>
								        <td width="15%">${item.name}</td>
								        <td width="15%">${item.insuranceType}</td>
								        <td width="15%">${item.planName}</td>
								        <td width="15%">${item.policyNumber}</td>
								        <td width="15%">&nbsp;</td>
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
	<div id="dialog-form" title="Add Other Health Insurance" style="display:none;">
		<p class="validateTips">All form fields are required.</p>		
		<form>
			<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="60%" valign="middle" class="label-bg">Name</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="name" type="text" class="width120" id="name" />
					</td>
				</tr>
				<tr>
					<td width="60%" valign="middle" class="label-bg">Type of Insurance</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="insuranceType" type="text" class="width120" id="insuranceType" />
					</td>
				</tr>
				<tr>
					<td width="60%" valign="middle" class="label-bg">Name of Plan</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="planName" type="text" class="width120" id="planName" />
					</td>
				</tr>
				<tr>
					<td width="60%" valign="middle" class="label-bg">Policy Number</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="policyNumber" type="text" class="width120" id="policyNumber" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>