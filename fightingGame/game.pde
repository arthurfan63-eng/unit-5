void Game(){
  background(#4BD9FF);
  fighter(CFrameX,CFrameY);
  fighter(humanoidX,humanoidY);
  dplayerSetup();

   CFrameY = CFrameY+ gravity*10;
   platform();
}









void fighter(float x,float y){
  ellipse(x,y,50,100);
  circle(x,y-50,50);
  
  
  
}

void platform(){
  
  
  
  
  if (CFrameY> 700 && CFrameX > 50 && CFrameX < 1250)grav = false;
  
  else grav = true;
  rect(50,750,1200,700);
  
}
