void Pause(){
  //  background(black);
   text("game paused" ,400,400);
//*   fill(black);
   //tactile(200,300,150,100,black);
   //rect(200,300,150,100);
   //strokeWeight(10);
   //tactile(400,300,150,100,black);
   //rect(400,300,150,100);
   //fill(white);
   //textSize(100);
   //text("restart",200,300);
  // text("continue",400,300);
  intro.rewind();
}

void pauseClicks(){
  
    //  if (mouseX>125 && mouseX<275 && mouseY > 250 && mouseY< 350){
 //   mode = start;
//    ls = 0;
//    rs = 0;
//  }  
  if (mouseX>0 && mouseX<width && mouseY > 0 && mouseY< height){
    mode = game;
  }
  
  
  
}
