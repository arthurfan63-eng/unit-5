void Lose() {
 
  fill(white);
  rect(width/2, 400, 200, 100);
  tactile(400, 400, 200, 100, black);
  if (ls > rs) {
    textSize(100);
    text("left wins!!", width/2, 200);
  }
  if (ls < rs) {

    text("right wins!!", width/2, 200);
  }
      textSize(50);
  text("restart",400,400,100);
}
void loseClicks() {

  if (mouseX>400- (200/2) && mouseX<400+ (200/2) && mouseY > 400- (100/2) && mouseY< 400+ (100/2)) {
    mode = start;
    ballx = width/2;
    bally = height/2;
    alive = new boolean[n];
    heart = 3;
    score = 0;
   
  }
}
