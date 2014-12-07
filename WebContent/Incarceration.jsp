<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Incarceration</title>
<jsp:include page="template/resources.jsp" />
<script type="text/javascript">
	$(function() {
		var mainForm = $('#mainForm'),
		    customAction = $('#customAction'),
		    itemIndex = $('#itemIndex');
		    
		$("#addIncarceration").button().on( "click", function() {
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
					
			var conf = confirm("Are you sure you want to delete this Person?");
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
	<form id="mainForm" name="mainForm" method="post" action="Incarceration">
		<input type="hidden" name="customAction" id="customAction" value="" />
		<input type="hidden" name="itemIndex" id="itemIndex" value="" />
		<div class="content-bg-big">
			<div align="left" class="main-heading" style="margin-bottom: 20px;">Incarceration</div>
			<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="60%" valign="middle" class="label-bg">Is anyone
						applying for health insurance on this application incarcerated
						(detained or jailed)</td>
					<td width="40%" valign="middle" class="field-bg">
						<input type="radio" class="radio-button" name="applicantIncarcerated" id="IncarcerationRadioY" value="y" onclick="toggleConditionalElement('IncarcerationYesRow', true)" ${otherInfo.applicantIncarcerated == 'y' ? 'checked' : ''} /> 
						<label for="radio5">Yes</label>
						<input type="radio" class="radio-button" name="applicantIncarcerated" id="IncarcerationRadioN" value="n" onclick="toggleConditionalElement('IncarcerationYesRow', false)" ${otherInfo.applicantIncarcerated != 'y' ? 'checked' : ''} /> 
						<label for="radio5">No</label>
					</td>
				</tr>
			</table>
			<div id="IncarcerationYesRow"  style="display: ${otherInfo.applicantIncarcerated != 'y' ? 'none' : ''};">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="form-container">
					<tr>
						<td width="20%" valign="middle" class="label-bg">
							<input type="button" id="addIncarceration" name="addIncarceration" value="Add Person" width="50" />
						</td>
						<td width="80%" valign="middle" class="field-bg">
							<table id="incomeInfoTable" width="100%" cellspacing="3">
								<tr>
									<td width="15%"><font size="3" color="#0B0B61">Name</font></td>
									<td width="15%"><font size="3" color="#0B0B61">Disposition Pending</font></td>
									<td width="10%"><font size="3" color="#0B0B61">Actions</font></td>
								</tr>
								<c:forEach items="${otherInfo.incarcerationList}" var="item" varStatus="loop">								
									<tr>
								        <td width="30%">${item.personName}</td>
								        <td width="30%">${item.dispositionPending}</td>
								        <td width="40%">
								        	<input id="inItemBtnUpdate${loop.index}" class="btnUpdate itemCommandBtn" type="button" value="update" data-index="${loop.index}" />
											<input id="inItemBtnDelete${loop.index}"  class="btnDelete itemCommandBtn" type="button" value="delete" data-index="${loop.index}" />								        
								        </td>
								  	</tr>
							    </c:forEach>
							</table>
						</td>
					</tr>
				</table>
			</div>
			<jsp:include page="template/footer.jsp">
				<jsp:param value="ChildSupport" name="previousLocation"/>
			</jsp:include>
		</div>
	</form>
</body>
</html>