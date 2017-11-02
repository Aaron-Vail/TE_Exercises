/// <reference path="../jquery-3.1.1.js" />

$(document).ready(function () {
	
	$('#SameShipping').on('click', function() {
		var Address1 = $('input[type=text]#BillingAddress1').val();
		$('input[type=text]#ShippingAddress1').val(Address1);
		var Address2 = $('input[type=text]#BillingAddress2').val();
		$('input[type=text]#ShippingAddress2').val(Address2);
		var BillingCity1 = $('input[type=text]#BillingCity').val();
		$('input[type=text]#ShippingCity').val(BillingCity1);
		var BillingState1 = $('input[type=text]#BillingState').val();
		$('input[type=text]#ShippingState').val(BillingState1);
		var BillingPostalCode1 = $('input[type=text]#BillingPostalCode').val();
		$('input[type=text]#ShippingPostalCode').val(BillingPostalCode1);
	});
	
	$("input[name='ShippingType']").on('click', function() {
		var Cost = $(this).attr('data-cost');
		$('#shipping > .price').text('$' + Cost);
		updateGrandTotal();
	});
	
	function updateGrandTotal() {
		var subtotal = $('#subtotal span').text();
		subtotal = parseFloat(subtotal.substring(1,subtotal.length));
		var tax = $('#tax span').text();
		tax = parseFloat(tax.substring(1,tax.length));
		var shipping = $('#shipping span').text();
		shipping = parseFloat(shipping.substring(1,shipping.length));
		var grandtotal = subtotal+tax+shipping;
		$('#grandtotal span').text('$' + grandtotal);
		
	}
});