/* 
 * 
 * Global.js contains all global functions pertaining to the forms
 * 
 */

// Global reset prompt to alert user that confirming will wipe out all
// form data and restart the process
function resetForm() {
	var reset = confirm("WARNING: Clicking 'OK' will reset all information in the form. Are you sure you wish to continue?")
	
	if(reset) {
		window.location='ResetForm';
	} else {
		
	}
}

function updateMember(index) {
	$('#customAction').val("update");
	$('#newMemberIndex').val(index);
	$('#mainForm').submit();
}

function toggleConditionalElements(elementIds, alternateElementIds) {
	var showElements, hideElements;
	
	if(elementIds !== undefined) {
		showElements = elementIds.split(',')
		$(showElements).each(function(index, value) {
			$(value).show();
		});
	}	
	
	if(alternateElementIds !== undefined) {
		hideElements = elementIds.split(',');
		$(hideElements).each(function (index, value) {
			$(value).hide();
		});
	}
}

function toggleWithRequired(elementIds, requiredElementIds, show) {
	var showElements, reqElements;
	
	if(elementIds !== undefined) {
		showElements = elementIds.split(',');
		$(showElements).each(function(index, value) {
			if(show) {
				$(value).show();
			} else {
				$(value).hide();
			}
		});
	}
	
	if(requiredElementIds !== undefined) {
		reqElements = requiredElementIds.split(',');
		$(reqElements).each(function(index, value) {
			$(value).prop('required', show);
		});
	}
}

function toggleConditionalElement(elementId, visible, alternateElementId) {
	
	var elements, alternateElements;
	
	if(elementId !== undefined) {
		elements = elementId.split(',');
	}
	
	if(alternateElementId !== undefined) {
		alerternateElements = alternateElementId.split(',');
	}
	
	$(elements).each( function(index, value) {
		var element = $('#' + value);
		if(visible) {
			element.show();
		} else {
			element.hide();
		}
	});
	
	$(alternateElements).each(function(index, value) {
		var element = $('#' + value);
		
		if(visible) {
			element.hide();
		} else {
			element.show();
		}
	});
}

function toggleConditionalElements(elementIds, alternateElementIds) {
	
	var showElements, hideElements;
	
	if(elementIds !== null) {
		showElements = elementIds.split(',');
		$(showElements).each(function (index, value) {
			$(value).show();
		});
	}
	
	if(alternateElementIds !== null) {
		hideElements = alternateElementIds.split(',');
		$(hideElements).each(function(index, value) {
			$(value).hide();
		});
	}
}

$(function () {
	// Load the formatters based on css classes attached to input types
    $('.formatDate').mask("99/99/9999",{placeholder:"mm/dd/yyyy"});
	$('.formatPhone').mask("999-999-9999");		
	$('.formatSocial').mask("999-99-9999");
	$('.formatMoney').maskMoney({'thousands':''});
	$('.formatEIN').mask('99-9999999')
});