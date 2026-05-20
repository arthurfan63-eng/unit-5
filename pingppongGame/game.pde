void Game(){
  background(red);
  //paddles
  circle(lx,ly,ld);
  circle(rx,ry,rd);
  //ball
  
  circle(ballx,bally,balld);
  
  ballx = ballx+ vx;
  bally = bally+ vy;  
    if (bally <0+(balld/2)|| bally > height-(balld/2)) {
    vy = vy *-1;
  }
  
  if (wkee ==true)ly = ly-5;
  if (skee ==true)ly = ly+5;  
  if (ukee ==true)ry = ry-5;
  if (dkee ==true)ry = ry+5;    
  
  
  if(dist(ballx,bally,lx,ly)<= ld/2 + balld/2) vx =vx *-1;
  if(dist(ballx,bally,rx,ry)<= rd/2 + balld/2) vx =vx *-1;  
}

void gameClicks(){
  
  
}
