<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Authorized Representatives</title>
<jsp:include page="template/resources.jsp" />
<script type="text/javascript">
  $(function() {
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
 		var rep = new Object();
 		rep.doYouAgree = $('input:radio[name=doYouAgree]:checked').val();
 		rep.repName = $('#repName').val();
 		rep.repPhone = $('#repPhone').val();
 		
 		rep.repAddress = new Object();
 		rep.repAddress.street = $('#address').val();
 		rep.repAddress.city = $('#city').val();
 		rep.repAddress.state = $('#state').val();
 		rep.repAddress.zip = $('#zip').val();		
 		
 		
 		$.ajax({
	        url: "editAuthorizedRep",
	        type: 'POST',
	        dataType: 'json',
	        data: JSON.stringify(rep),
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
        "Add Representative": addItem,
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
 
    $( "#addRep" ).button().on( "click", function() {
      dialog.dialog( "open" );
    });
  });
  </script>
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="AuthorizedRep">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<div class="content-bg-big">
			<div align="left" class="main-heading">Authorized Representatives</div>
			<br> <br>
			<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id="AuthRepTable">
				<tr>
					<td width="60%" valign="middle" class="label-bg">Do you want to name someone as your authorized representative?</td>
					<td valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="isAuthorizedRepNeeded" id="authRepY" value="y" onclick="toggleConditionalElement('authRepYRow', true);" ${otherInfo.isAuthorizedRepNeeded == 'y' ? 'checked' : ''} /> 
						<label for="authRep">Yes</label> 
						<input type="radio" class="radio-button" name="isAuthorizedRepNeeded" id="authRepN" value="n" onclick="toggleConditionalElement('authRepYRow', false);"${otherInfo.isAuthorizedRepNeeded != 'y' ? 'checked' : ''} /> 
						<label for="authRep">No</label>
					</td>
				</tr>
			</table>
			<div style="display: ${otherInfo.isAuthorizedRepNeeded != 'y' ? 'none' : ''};" id="authRepYRow">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="form-container">
					<tr>
						<td width="20%" valign="middle" class="label-bg"><input type="button" id="addRep" value="Add Rep"></td>
						<td width="80%" valign="middle" class="field-bg">
							<table id="memberNameTable" width="100%" cellspacing="3">
								<tr>
									<td width="15%"><font size="3" color="#0B0B61">Name<span>*</span></font></td>
									<td width="10%"><font size="3" color="#0B0B61">Actions</font></td>
								</tr>
								<c:forEach items="${otherInfo.authorizedRep}" var="rep" varStatus="loop">								
									<tr>
								        <td width="15%">${rep.repName}</td>								        
								        <td width="15%">&nbsp;</td>
								  	</tr>
							    </c:forEach>
							</table>
						</td>
					</tr>
				</table>
			</div>		
			<jsp:include page="template/footer.jsp">
				<jsp:param value="OtherHealthInsurance" name="previousLocation"/>
			</jsp:include>
		</div>
	</form>
	
	<div id="dialog-form" title="Create Authorized Rep" style="display:none;">
	  <p class="validateTips">All form fields are required.</p>
	 
	  <form>
	  	<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="60%" valign="middle" class="label-bg">What is the name?</td>
				<td width="40%" valign="middle" class="field-bg">
					<input name="repName" type="text" class="width120" id="repName" maxlength="100" value="" />
				</td>
			</tr>
			<tr>
				<td width="60%" valign="middle" class="label-bg">What is the Address?</td>
				<td width="40%" valign="middle" class="field-bg">
					<input name="address" type="text" class="width120" id="address" maxlength="100" />
					<br />
					<div class="small-label">Address</div>
					<br/> 
					<input name="city" type="text" class="width120" id="city" maxlength="50" />
					<br />
					<div class="small-label">City</div> 
					<select name="state" class="width120" id="state" required>
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
					<br />
					<div class="small-label">State</div> 
					<input name="zip" type="zip" class="width120" id="zip" maxlength="50" />
					<br />
					<div class="small-label">Zip</div>
				</td>
			</tr>
			<tr>
				<td class="label-bg">What is the phone number?</td>
				<td class="field-bg"><input name="repPhone" class="width120 formatPhone" id="repPhone" maxlength="100" /></td>
			</tr>
			<tr>
				<td colspan="2" class="label-bg">By signing, you allow this person to sign your application, to get
					official information about this application and to act for you
					on all future matters with this agency
				</td>
			</tr>
			<tr id="agreeDisagree">
				<td colspan="2" class="field-bg">
					<input type="radio" class="radio-button" name="doYouAgree" id="agreeAuthRep" checked /> 
					<label for="radio5"> <b>Agree:</b> During the telephone application process, you accepted and agreed to
						the above terms</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="field-bg">					
					<input type="radio" class="radio-button" name="doYouAgree" id="disAgreeAuthRep" /> 
					<label for="radio5"> <b>Disagree:</b> During the telephone application process, you
						refused and disagreed to the above terms</label>
				</td>
			</tr>
		</table>
	  </form>
	</div>
</body>
</html>