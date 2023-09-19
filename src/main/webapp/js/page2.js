//1) FA COMPARIRE FINESTRA PER CONSENTIRE O MENO L'ACCESSO ALLA POSIZ. SU UN SITO
	//Get location coordinates
	if(navigator.geolocation){
		window.navigator.geolocation.getCurrentPosition( (pos)=> {
			console.log(pos);
			})
		}
		else {
			console.log("couldn't get the position");	
		}
		

//2) WINDOW.HISTORY. + ALTRO, CI FA TORNARE ALLA PAGINA PRECEDENTE		
function returnPrecPage(){
	const btn1= document.getElementById('btnGoBack');
	setTimeout( ()=> {
		window.history.go(-1)
		//OPPURE
//		window.history.back()
	},2000);
}