<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HouseHold Information</title>
<jsp:include page="template/resources.jsp" />

  <script type="text/javascript">
  $(function() {
	  var mainForm = $("#mainForm"),
	  	  customAction = $('#customAction'),
	  	  memberIndex = $('#memberIndex');
	  
		$( "#addMemberNames" ).button().on( "click", function() {
		   	customAction.val('editMember');
		   	mainForm.submit();
		});	
		
		$(".btnUpdate").on( "click", function(event) {
			var id = event.target.id,
				el = $('#' + id);
					
			customAction.val('editMember');
			memberIndex.val(el.attr('data-index'));
			
			mainForm.submit();
		});		
		
		$(".btnDelete").on( "click", function(event) {
			var id = event.target.id,
				el = $('#' + id);
			
			var conf = confirm("Are you sure you want to delete this Household Member?");
			if(conf) {					
				customAction.val('deleteMember');
				memberIndex.val(el.attr('data-index'));
				
				mainForm.submit();
			}
		});	
	  
  });
  /*$(function() {
    var dialog, form,
    	firstName = $("#memberFirstName"),
    	middleName = $("#memberMiddleName"),
    	lastName = $("#memberLastName"),
    	gender = $('input:radio[name=memberGender]:checked'),
    	relationship = $("#memberRelationship"),
    	birthDate = $('#memberBirthDate'),
 
    function addUser() {
 		var generalInfo = new Object();
 		generalInfo.firstName = firstName.val();
 		generalInfo.middleName = middleName.val();
 		generalInfo.lastName = lastName.val();
 		generalInfo.gender = $('input:radio[name=memberGender]:checked').val();
 		generalInfo.relationship = relationship.val();
 		generalInfo.birthDate = birthDate.val();
 		
 		$.ajax({
	        url: "editMember",
	        type: 'POST',
	        dataType: 'json',
	        data: JSON.stringify(generalInfo),
	        contentType: 'application/json',
	        mimeType: 'application/json',
	 
	        success: function () {
	        	dialog.dialog( "close" );
	        	$('#customAction').val('update')
	        	hhForm.submit();
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
        "Add Member": addUser,
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
      addUser();
    });
 
    $( "#addMemberNames" ).button().on( "click", function() {
      dialog.dialog( "open" );
    });
  });*/
  </script>
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="HouseHoldInformation">
		<input id="customAction" name="customAction" type="hidden" value="" />
		<input id="memberIndex" name="memberIndex" type="hidden" value="" />
		<div class="content-bg-big">
			<div align="left" class="main-heading">HOH Information</div>
			<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="60%" valign="middle" class="label-bg">What is your Name? <span>*</span>
					</td>
					<td width="40%" valign="middle" class="field-bg">
						<input name="firstName" type="text" class="width120" id="firstName" maxlength="50" value="${hh.contactInfo.firstName}" required /><br />
						<div class="small-label">First<span>*</span></div> 
						<input name="middleName" type="text" class="width120" id="middleName" value="${hh.contactInfo.middleName}" maxlength="50" /><br />
						<div class="small-label">Middle</div> 
						<input name="lastName" type="text" class="width120" id="lastName" value="${hh.contactInfo.lastName}" maxlength="50" required /><br />
						<div class="small-label">Last<span>*</span></div> 
						<input name="suffix" type="text" class="width120" id="suffix" maxlength="50" value="${hh.contactInfo.suffix}" /><br />
						<div class="small-label">Suffix</div></td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg">What is Date of Birth? <span>*</span></td>
					<td colspan="2" valign="middle" class="field-bg">
						<fmt:formatDate type="date" var="formatBirthDate" value="${hh.contactInfo.birthDate}" pattern="MM/dd/yyyy" />
						<input class="width120 formatDate" name="birthDate" id="birthDate" value="${formatBirthDate}" required />
					</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg">What is your Gender?</td>
					<td colspan="2" valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="gender" id="genderMale" value="Male" ${hh.contactInfo.gender != 'Female' ? 'checked' : ''} /> <label for="HOHGender">Male</label> 
						<input type="radio" class="radio-button" name="gender" id="genderFemale" value="Female" ${hh.contactInfo.gender == 'Female' ? 'checked' : ''} /> <label for="HOHGender">Female</label>
					</td>
				</tr>
			</table>
			<div class="partition">&nbsp;</div>
			<h4>Household Details</h4>
			<br>
			<table class="form-container" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td valign="middle" class="label-bg">Aside from yourself, are
						you seeking medical assistance for anyone else in your household?</td>
					<td valign="middle" class="field-bg">
						<input type="radio" class="radio-button memberGender" name="houseHoldMembers" id="HOHHouseholdMembersY" value="y" onclick="toggleConditionalElement('HOHMemberDetails', true);" ${hh.houseHoldMembers == 'y' ? 'checked' : ''} /> <label for="HOHHouseholdMembers">Yes</label> 
						<input type="radio" class="radio-button memberGender" name="houseHoldMembers" id="HOHHouseholdMembersN" value="n" onclick="toggleConditionalElement('HOHMemberDetails', false);" ${hh.houseHoldMembers != 'y' ? 'checked' : ''} /> <label for="HOHHouseholdMembers">No</label>				
					</td>
				</tr>
				<tr>
					<td valign="middle" class="label-bg">Relationship</td>
					<td colspan="2" valign="middle" class="field-bg"><input type="text" class="width120" name="self" id="self" value="Self" disabled /></td>
				</tr>
			</table>
			<div id="HOHMemberDetails"  style="display: ${hh.houseHoldMembers != 'y' ? 'none' : ''};">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="form-container">
					<tr>
						<td width="20%" valign="middle" class="label-bg"><input type="button" class="ui-button ui-widget ui-state-default ui-corner-all" id="addMemberNames" value="Add Member"></td>
						<td width="80%" valign="middle" class="field-bg">
							<table id="memberNameTable" width="100%" cellspacing="3">
								<tr>
									<td width="15%"><font size="3" color="#0B0B61">Name</font></td>
									<td width="15%"><font size="3" color="#0B0B61">DOB</font></td>
									<td width="15%"><font size="3" color="#0B0B61">Relation</font></td>
									<td width="15%"><font size="3" color="#0B0B61">Gender</font></td>
									<td width="40%"><font size="3" color="#0B0B61">Actions</font></td>
								</tr>
								<c:forEach items="${hh.memberInfo}" var="member" varStatus="loop">	
									<c:choose>
										<c:when test="${loop.index > 0}">
											<tr>
										        <td width="15%">${member.generalInfo.firstName} ${member.generalInfo.middleName} ${member.generalInfo.lastName}</td>
										        <td width="15%"><fmt:formatDate type="date" var="fmtDOB" value="${member.generalInfo.birthDate}" pattern="MM/dd/yyyy" />${fmtDOB}</td>
										        <td width="15%">${member.generalInfo.relationship}</td>
										        <td width="15%">${member.generalInfo.gender}</td>
										        <td width="40%">
										        	<input id="memberItemBtnUpdate${loop.index}" class="btnUpdate itemCommandBtn" type="button" value="update" data-index="${loop.index}" />
													<input id="memberItemBtnDelete${loop.index}"  class="btnDelete itemCommandBtn" type="button" value="delete" data-index="${loop.index}" />
												</td>
										  	</tr>
										</c:when>
									</c:choose>
							    </c:forEach>
							</table>
						</td>
					</tr>
				</table>
			</div>			
			<jsp:include page="template/footer.jsp">
				<jsp:param value="none" name="showPrevious"/>
			</jsp:include>
		</div>
	</form>
	
	<div id="dialog-form" title="Create new user" style="display:none;">
	  <p class="validateTips">All form fields are required.</p>
	 
	  <form>
	  	<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="60%" valign="middle" class="label-bg">What is the member's name? <span>*</span>
				</td>
				<td width="40%" valign="middle" class="field-bg">
					<input name="firstName" type="text" class="width120" id="memberFirstName" maxlength="50" value="" required /><br />
					<div class="small-label">First<span>*</span></div> 
					<label for="textfield"></label> 
					<input name="middleName" type="text" class="width120" id="memberMiddleName" value="" maxlength="50" /><br />
					<div class="small-label">Middle</div> 
					<input name="lastName" type="text" class="width120" id="memberLastName" value="" maxlength="50" required /><br />
					<div class="small-label">Last<span>*</span>
					</div> 
				</td>
			</tr>
			<tr>
				<td valign="middle" class="label-bg">What is the member's date of birth? <span>*</span></td>
				<td colspan="2" valign="middle" class="field-bg">
					<input class="width120 formatDate" name="memberBirthDate" id="memberBirthDate" value="" required />
				</td>
			</tr>
			<tr>
				<td valign="middle" class="label-bg">What is the member's relationship to you?</td>
				<td colspan="2" valign="middle" class="field-bg">
					<select name="memberRelationship" class="width120" id="memberRelationship" required>
						<option value="SPOUSE">SPOUSE</option>
						<option value="PARENT OF APPLICANT'S CHILD">PARENT OF APPLICANT'S CHILD</option>
						<option value="PARENT OF APPLICANT (NATURAL, ADOPTIVE, OR STEP)">PARENT OF APPLICANT (NATURAL, ADOPTIVE, OR STEP)</option>
						<option value="CHILD">CHILD</option>
						<option value="GRANDCHILD">GRANDCHILD</option>
						<option value="NEPHEW OR NIECE">NEPHEW OR NIECE</option>
						<option value="SIBLING">SIBLING</option>
						<option value="FIRST OR SECOND COUSIN">FIRST OR SECOND COUSIN</option>
						<option value="OTHER RELATIVE">OTHER RELATIVE</option>
						<option value="BOARDER">BOARDER</option>
						<option value="FRIEND">FRIEND</option>
						<option value="UNBORN">UNBORN</option>
						<option value="FOOD STAMP ATTENDANT ONLY">FOOD STAMP ATTENDANT ONLY</option>
						<option value="STEP CHILD">STEP CHILD</option>
						<option value="STEP GRANDCHILD">STEP GRANDCHILD</option>
						<option value="STEP NEPHEW OR NIECE">STEP NEPHEW OR NIECE</option>
						<option value="STEP BROTHER OR SISTER">STEP BROTHER OR SISTER</option>
						<option value="OTHER SPECIFIED ADULT RELATIVE">OTHER SPECIFIED ADULT RELATIVE</option>
						<option value="FOSTER CHILD">FOSTER CHILD</option>
						<option value="REQUIRED MEMBER NOT RELATED TO HOH">REQUIRED MEMBER NOT RELATED TO HOH</option>
						<option value="CHILD UNRELATED TO APPLICANT"">CHILD UNRELATED TO APPLICANT"</option>
						<option value="UNBORN BUT NOT OF HOH">UNBORN BUT NOT OF HOH</option>
						<option value="STEP PARENT">STEP PARENT</option>
						<option value="DOMESTIC PARTNER">DOMESTIC PARTNER</option>
					</select>
					<div class="small-label">Relationship<span>*</span></div>
				</td>
			</tr>
			<tr>
				<td valign="middle" class="label-bg">What is the member's gender?</td>
				<td colspan="2" valign="middle" class="field-bg">
					<input type="radio" class="radio-button" name="memberGender" id="memberGenderMale" value="Male" checked /> <label for="memberGender">Male</label> 
					<input type="radio" class="radio-button" name="memberGender" id="memberGenderFemale" value="Female"  /> <label for="memberGender">Female</label>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
				</td>
			</tr>
		</table>
	  </form>
	</div>
</body>
</html>