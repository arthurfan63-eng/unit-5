void Game() {
 
  background(red);//paddle/////////////
  fill(white);
  circle(px, py, pd);
    if (wkee ==true)px = px-10;
  if (skee ==true)px = px+5*2;
  timer=timer-1;
  circle(ballx, bally, balld);
  if (timer<0) {
    ballx = ballx+ vx;
    bally = bally+ vy;
  }
  //bouncing
  if (bally <0+(balld/2)|| bally > height-(balld/2)) {
    vy = vy *-1;

  }
    if (ballx <0+(balld/2)|| ballx > width-(balld/2)) {
    vx = vx *-1;

  }
 //* if (bally>height) {
    //rs++;
    //ballx = width/2;
   // bally = height/2;
    //timer = 100;

  //}
  if (dist(ballx, bally, px, py)<= pd/2 + balld/2) {

    vy = vy*-1;
    vy = (ballx-py)/10;  
    vx = (ballx-px)/10;
 
  }
    if (dist(ballx, bally, px, py)<= pd/2 + balld/2) {
    vx = vx*-1;
  //  click2.rewind();
  //  click2.play();
    vx = (ballx-px)/5;
    vy = (bally-py)/5;
  }
  
  
  
  
  
  
  int i =0;
  while(i<n){
        if(n>=200){
     fill(yellow);
    } else if(n>= 300){
      fill(white);
    } 
    if(alive[i] == true)    manage(i);

  i = i+1;
  }
  
  text("score:"+ score,200,700);
  text("heart:" + heart,600,700);  
  
  
  
  
  
  

  if (px <100) {
    px = 100;
  }
  if (px >700) {
    px = 700;
  }
 
  if (n ==score) {
    mode = lose;
  }
  if (bally>=785){
    heart = heart-1;   
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }
  if (heart == 0){
   mode = lose; 
  }
}



void manage (int i){
      if (y[i] == 100)fill(white);
     if (y[i] == 200)fill(black);
     if (y[i] == 300)fill(yellow);
      circle(x[i],y[i],20);
 
        if (dist(ballx, bally, x[i], y[i])<= 10/2 + balld/2) {
    vx = vx*-2;
    
    vx = (ballx-x[i]);
    vy = (bally-y[i]);
    vy = vy*1.5;
    alive[i] = false;
    score = score+1;
  }
  
}







void gameClicks() {
      if (mouseX>25 && mouseX<75 && mouseY > 25 && mouseY< 75) {
    mode = pause;

  }
}
