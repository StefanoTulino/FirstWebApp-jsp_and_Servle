
var slider = document.getElementById("range");
var output = document.getElementById("demo");
//associa al valore del range al Value da mostrare
output.innerHTML = slider.value;

//tramite questa function viene mostrato a schermo
	slider.oninput = function() {
 		 output.innerHTML = this.value;
	}
	
	