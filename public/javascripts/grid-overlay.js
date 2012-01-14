
var Overlay = {};

Overlay.display = function() {
	
	var html = '<div class="container_12" style="position:absolute; z-index: 5000; left: 50%; margin-left: -480px; top: 0; height: 650px;">' + 
	'<div class="grid_1" style="width: 58px; border: dashed red 1px; min-height: 100%; font-size: 70%;">1</div>' +
	'<div class="grid_1" style="width: 58px; border: dashed red 1px; min-height: 100%; font-size: 70%;">2</div>' +
	'<div class="grid_1" style="width: 58px; border: dashed red 1px; min-height: 100%; font-size: 70%;">3</div>' +
	'<div class="grid_1" style="width: 58px; border: dashed red 1px; min-height: 100%; font-size: 70%;">4</div>' +
	'<div class="grid_1" style="width: 58px; border: dashed red 1px; min-height: 100%; font-size: 70%;">5</div>' +
	'<div class="grid_1" style="width: 58px; border: dashed red 1px; min-height: 100%; font-size: 70%;">6</div>' +
	'<div class="grid_1" style="width: 58px; border: dashed red 1px; min-height: 100%; font-size: 70%;">7</div>' +
	'<div class="grid_1" style="width: 58px; border: dashed red 1px; min-height: 100%; font-size: 70%;">8</div>' +
	'<div class="grid_1" style="width: 58px; border: dashed red 1px; min-height: 100%; font-size: 70%;">9</div>' +
	'<div class="grid_1" style="width: 58px; border: dashed red 1px; min-height: 100%; font-size: 70%;">10</div>' +
	'<div class="grid_1" style="width: 58px; border: dashed red 1px; min-height: 100%; font-size: 70%;">11</div>' +
	'<div class="grid_1" style="width: 58px; border: dashed red 1px; min-height: 100%; font-size: 70%;">12</div>' +
	'</div>';
	$(document.body).append(html);
};


$(document).ready(function() {
	Overlay.display();
});


