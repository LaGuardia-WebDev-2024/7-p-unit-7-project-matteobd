//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}


//🎯Variable Declarations Go Here
var fireworkX = 20;

var pokeball = 200;
var pokesize = 200;
var pokeline = 200
var pokescale = 0.5;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    
  }
scale (pokescale);
//red top
  fill(255, 0, 0);
  stroke (0);
  strokeWeight (8);
  arc(pokeball, 200, pokesize, pokesize, PI, TWO_PI);
  
  //white bottom
  fill(255); 
  arc(pokeball, 200, pokesize, pokesize, 0, PI);
  
  //dividing line
  strokeWeight(10); 
  line(pokeball - 100, 200, pokeball + 100, pokeline);

  //black button 
  fill(0);
  strokeWeight(10);
  ellipse(pokeball, 200, 50, 50);
  
  //white button
  fill(255);
  ellipse(pokeball, 200, 48, 48)
  
  //🎯Animation Code Goes Here
  rect(fireworkX, 15, 10, 10);
  
  
  pokeball = pokeball + 1
  
  if(pokeball > 300){pokeball = 0; pokescale = 0.5} 
  
  pokescale = pokescale + 0.009

  

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
