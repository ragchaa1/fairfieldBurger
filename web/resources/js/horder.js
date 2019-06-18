function init() {
	$("div.food button").hide();
}

function startOrder(){
	location.href = 'start-order';
}

function showButton(id) {
	$("div#"+id+" button").show();
}

function hideButton(id) {
	$("div#"+id+" button").hide();
}

function initAddButtons(event) {
	$(".btn-add" ).on("mouseenter", function() {
		$("button").show();
	})
	.on("mouseleave", function() {
		$("button").hide();
	});
}