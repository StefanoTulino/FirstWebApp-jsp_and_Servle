/* restituisce tutte le property settate e non settate di questo specifico selettore*/
var carouselContainer = document.querySelector(".carouselContainer");
  
/*Restituisce una lista di oggetti */
 var slides = document.querySelectorAll('.slides');  

 var next = document.querySelector('#next');  
 var prev = document.querySelector('#prev');  
 var counter = 1 ;  
 
 /*Restituisce, su elementi su cui è già stato applicato Css, la larghezza interna di un elemento in pixel,esclusi i bordi */
 const size = slides[0].clientWidth;  
 carouselContainer.style.transform = 'translateX(' + (-size * counter ) + 'px';  
 
 next.addEventListener('click',()=>{  
   if (counter>=slides.length)
   		return null;  
   /* La transformproprietà applica una trasformazione 2D o 3D a un elemento. 
   		Questa proprietà consente di ruotare, ridimensionare, spostare, inclinare e così via gli elementi. */
   carouselContainer.style.transition = 'transform 0.4s ease-in-out';  
   counter++;  
   carouselContainer.style.transform = 'translateX(' + (-size * counter ) + 'px';  
 });  
 
 prev.addEventListener('click',()=>{  
   /* Sarebbe return null */
   if (counter<=0)return;  
   carouselContainer.style.transition = 'transform 0.4s ease-in-out';  
   counter--;  
   carouselContainer.style.transform = 'translateX(' + (-size * counter ) + 'px';  
 });  
 
 
 /* Permette di modificare runtime un elemento in qualunque modo, specificando cosa modificare del css e specificando la durata*/
 carouselContainer.addEventListener('transitionend',()=>{  
   console.log(slides[counter]);  
   if(slides[counter].id ==='lastslide'){  
   carouselContainer.style.transition = 'none';  
   counter = slides.length - 2;      
   carouselContainer.style.transform = 'translateX(' + (-size * counter ) + 'px';  
   }  
 });  
 
 carouselContainer.addEventListener('transitionend',()=>{  
   console.log(slides[counter]);  
   if(slides[counter].id ==='firstslide'){  
   carouselContainer.style.transition = 'none';  
   counter = slides.length - counter;      
   carouselContainer.style.transform = 'translateX(' + (-size * counter ) + 'px';  
   }  
 });  