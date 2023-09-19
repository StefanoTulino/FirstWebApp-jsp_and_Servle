//1)Create Elements
	const nuovoDiv1= document.createElement('newDiv1');
	/*nuovoDiv.style.marginBottom=0;*/
	nuovoDiv1.style.marginTop='2%';
	nuovoDiv1.innerHTML='Ciao Mondo1';
	nuovoDiv1.style.display='block';
	
	const nuovoDiv2= document.createElement('newDiv2');
	/*nuovoDiv.style.marginBottom=0;*/
	nuovoDiv2.style.marginTop='4%';
	nuovoDiv2.innerHTML='Ciao Mondo2';
	nuovoDiv2.style.color='red';
	nuovoDiv2.style.display='block';
	
//-----------------------------------------------------------------

//2)Add elemento PRIMA O DOPO UN PRECISO ELEMENTO

	//2.1)Add un elemento PRIMA di un figlio contenuto in qualche contenitore
	//Riferimento al padre
	const parent1= document.getElementById('childElement').parentNode;
	//Riferimento al figlio
	const node= document.getElementById('childElement');
	parent1.insertBefore(nuovoDiv1,node);
	
	
	//2.2)Add un elemento DOPO un preciso elemento
	//Riferimento al padre
	const parent2= document.getElementById('childElement').parentNode;
	parent2.appendChild(nuovoDiv2);
	
//-----------------------------------------------------------------

//3)Replace(Sostituisci) un elemento figlio
const child= document.getElementById('elementList1');
const parent= document.getElementById('list');

const nuovoElemento= document.createElement('newElementList1');
nuovoElemento.innerHTML='Ciao Replace';
parent.replaceChild(nuovoElemento,child);


//4)Rimuovi un elemento figlio
function removeChildElement(){
	const child2= document.getElementById('elementList2');
	const parent= document.getElementById('list');
	parent.removeChild(child2);
}


//-_--_--_--_--_--_--_--_--_--_--_--_--_--_--_--_--_--_--_--_--_--_--_--_--_--_--_--_--_-

//WINDOWS Screen --> ritorna un oggetto che contiene le info circa lo screen di un utente
var object=window.screen;
alert("Altezza: "+object.height+", Larghezza: "+ object.width);
console.log(object);


//WINDOWS LOCATION(reload) --> ricarica la pagina ogni 2 secondi
function reloadPage(){
	setTimeout( ()=> {
		window.location.reload()
	},2000);
}
