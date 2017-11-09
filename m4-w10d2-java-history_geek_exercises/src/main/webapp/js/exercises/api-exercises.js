/// <reference path="../jquery-3.1.1.js" />
var root = "http://localhost:8080/m4-java-historygeek-exercises"

$(document).ready(function () {
	$('input[type=text]#BillingPostalCode').on('change', function() { 
		
	    $.ajax({
	    	url: root + "/api/getTax",
	    	method: 'GET', 
	    	data: {
	    	'billingZipCode': $(this).val(),
	    	'subtotal': $('#subtotal span').text().replace("$",""),
	    	}
	    }).then(function(data) {
	        var result = JSON.parse(data);
	        $('#tax span').text(result.tax);
    	})
	})
	
});