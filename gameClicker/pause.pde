void Pause(){
    background(111);
   text("game paused" ,300,100);
   fill(0);
   rect(200,300,150,100);
   rect(400,300,150,100);
   fill(255);
   text("restart",200,300);
   text("continue",400,300);
  
}

void pauseClicks(){
  
      if (mouseX>125 && mouseX<275 && mouseY > 250 && mouseY< 350){
    mode = start;
    heart = 3;
    score = 0;
  }  
  if (mouseX>250 && mouseX<550 && mouseY > 250 && mouseY< 350){
    mode = game;
  }
  
  
  
}
