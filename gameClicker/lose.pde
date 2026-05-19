void Lose(){

  background(black);
   text("YOU LOSE" ,300,100);
   fill(0);
    tactile(200,300,150,100,black);
   rect(200,300,150,100);
   strokeWeight(0);
   tactile(400,300,150,100,black);
   rect(400,300,150,100);
   fill(255);
   text("restart",200,300);
   text("quit",400,300);
   
   if (score > hiScore){
    hiScore = score; 
     
     
   }
   
   
   text("High Score:" +hiScore,300,500);


      theme.play();

  
   

}

void loseClicks(){
  
    if (mouseX>125 && mouseX<275 && mouseY > 250 && mouseY< 350){
    mode = start;
    heart = 3;
    score = 0;
  }  
  if (mouseX>200 && mouseX<600 && mouseY > 400 && mouseY< 500){
    
  }
  
  
}
