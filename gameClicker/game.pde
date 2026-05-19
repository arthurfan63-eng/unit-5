void Game() {

 intro.pause();
 intro.rewind();
  background(red);
  fill(colorsel);
  circle(x, y, d);
  

  x = x+ vx;
  y = y+ vy;
  tactile(50, 50, 50, 50, black);
  fill(black);
  square(50, 50, 50);
  fill(black);
  strokeWeight(0);
  textSize(10);
  fill(white);
  text("PAUSE", 50, 50);
  textSize(60);
  fill(black);


  text("Score:" +score, width/2, 50);
  text("Lives:" +heart, width/2, 100);








  if (x <0 + (d/2)|| x > width-(d/2)) {
    vx = vx *-1;
  }

  if (y <0+(d/2)|| y > height-(d/2)) {
    vy = vy *-1;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y)<d/2) {
    score = score+1;
    click.rewind();
    click.play();
    vx = vx+1;
    vy = vy+1;
  } else {
    heart = heart - 1;
    boom.rewind();
    boom.play();
    fill(black);
rect(0,0,1000000,1000000);
  }
  if (heart == 0) mode = lose;
  if (mouseX>25 && mouseX<75 && mouseY > 25 && mouseY< 75) {
    mode = pause;
    heart = heart +1;
  }
}
