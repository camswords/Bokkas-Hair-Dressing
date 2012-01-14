
var Overlay = {};

Overlay.create = function() {

	function displayBorders() {
		var html = '<div id="grid_overlay" class="container_12" style="position:absolute; z-index: 5000; left: 50%; margin-left: -480px; top: 0; height: 650px;">' + 
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">1</div>' +
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">2</div>' +
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">3</div>' +
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">4</div>' +
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">5</div>' +
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">6</div>' +
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">7</div>' +
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">8</div>' +
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">9</div>' +
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">10</div>' +
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">11</div>' +
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">12</div>' +
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">13</div>' +
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">14</div>' +
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">15</div>' +
		'<div class="grid_1" style="width: 38px; border: dashed red 1px; min-height: 100%; font-size: 70%;">16</div>' +
		'</div>'; 
		$(document.body).append(html);
	}
	
	function displayToggleButton() {
		var html = '<input id="toggleOverlay" type="button" value="hide" onclick="overlay.toggle();"/>';
		$(document.body).append(html);	
	}
	
	function toggle() {
	
		if ($('#grid_overlay').length !== 0) {
			$('#grid_overlay').remove();
			$('#toggleOverlay').attr('value', 'show');
			
		} else {
			displayBorders();
			$('#toggleOverlay').attr('value', 'hide');
		}
	}
	
	return {
		display: function() { displayBorders(); displayToggleButton(); },
		toggle: toggle
	}
};


var overlay = Overlay.create();

$(document).ready(function() {
	overlay.display();
});


