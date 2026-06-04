void Lose() {
   intro.rewind();
  theme.play();
  

  fill(white);

  if(score == n){
       textSize(70);
  text("restart",400,400,100);   

      image(gif1[f1],0,0,width,height);
  f1 = f1+1;
if (f1 == numberOfFrames1)f1 = 1;
//    rect(width/2, 700, 200, 100);
//  tactile(400, 700, 200, 100, black);
  
    text("<click to restart>",400,700,100);  
    fill(white);
   text("AMERICA IS SAFE!!",400,200,100);
  } else{
    
   textSize(50);

  fill(white);
   image(gif[f],0,0,width,height);
  f = f+1;
if (f == numberOfFrames)f = 1;
  //  rect(width/2, 700, 200, 100);
 // tactile(400, 700, 200, 100, black);
    text("<click to restart>",400,700,100);  
    fill(0);
    textSize(40);
   text("the reporters escaped!!!",400,100,100);
  }
      textSize(50);
      fill(black);
//  text("restart",400,700,100);
  fill(white);

}
void loseClicks() {

  if (mouseX>0- (200/2) && mouseX<width+ (200/2) && mouseY > 0- (100/2) && mouseY< height+ (700/2)) {
    mode = start;
    ballx = width/2;
    bally = height/2;
    alive = new boolean[n];
    heart = 3;
    score = 0;
    tempx = tempy = 100;
  int i = 0;
  while(i<n){
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx +50;
    if(tempx >= width){
      tempx= 100;
      tempy = tempy+100;
    }
    i = i+1;
  }
  }
}
