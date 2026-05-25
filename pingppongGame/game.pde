void Game() {
   intro.pause();
 intro.rewind();
  background(red);
    tactile(50, 50, 50, 50, black);
  fill(black);
  square(50, 50, 50);
  fill(black);
  strokeWeight(0);
  textSize(10);
  fill(white);
  text("PAUSE", 50, 50);
  textSize(60);
  timer=timer-1;
  //paddles
  fill(black);
  circle(lx, ly, ld);
  fill(white);
  circle(rx, ry, rd);
  //ball

  circle(ballx, bally, balld);
  if (timer<0) {
    ballx = ballx+ vx;
    bally = bally+ vy;
  }
  //bouncing
  if (bally <0+(balld/2)|| bally > height-(balld/2)) {
    vy = vy *-1;
    click.rewind();
    click.play();
  }
  if (ballx<0) {
    rs++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    boom.rewind();
    boom.play();
  }
  if (ballx>width) {
    ls++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
        boom.rewind();
    boom.play();
  }
  if (wkee ==true)ly = ly-10;
  if (skee ==true)ly = ly+5*2;
  if (AI == false) {
    if (ukee ==true)ry = ry-5*2;
    if (dkee ==true)ry = ry+5*2;
  } else {
    if(ballx > 400){
    if (bally<ry){
      ry = ry-5;
      }else{ry = ry+5;}
    }
  }

  if (dist(ballx, bally, lx, ly)<= ld/2 + balld/2) {
    vx = vx*-1;
    click2.rewind();
    click2.play();
    vx = (ballx-lx)/10;
    vy = (bally-ly)/10;
  }
  if (dist(ballx, bally, rx, ry)<= rd/2 + balld/2) {
    vx = vx*-1;
    click2.rewind();
    click2.play();
    vx = (ballx-rx)/10;
    vy = (bally-ry)/10;
  }

  if (ly <100) {
    ly = 100;
  }
  if (ly >500) {
    ly = 500;
  }
  if (ry <100) {
    ry = 100;
  }
  if (ry >500) {
    ry = 500;
  }
  if (bally <50) {
    bally = 50;
  }
  if (bally >550) {
    bally = 550;
  }
  if (ls ==3) {
    mode = lose;
  }
  if (rs ==3) {
    mode = lose;
  }
  //////SCOREBOARD SCOREBOARD//////////////////////////////////////////////s
  textSize(30);
  fill(black);
  text(ls, width/4, 100);
  fill(white);
  text(rs, 3*width/4, 100);

  //  text(timer, width/4, 100);
}











void gameClicks() {
      if (mouseX>25 && mouseX<75 && mouseY > 25 && mouseY< 75) {
    mode = pause;

  }
}
