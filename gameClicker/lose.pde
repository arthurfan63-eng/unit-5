void Lose(){
  background(111);
   text("YOU LOSE" ,300,100);
   fill(0);
   rect(200,300,150,100);
   rect(400,300,150,100);
   fill(255);
   text("restart",200,300);
   text("quit",400,300);
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
