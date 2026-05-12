import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//sounds
Minim minim;
//AudioPlayer
 
int mode;
final int  start = 1;
final int  menu = 2;
final int  game = 3;
final int  pause = 4;
final int  lose = 5;
//TARGET VAR--------------------------------------------------------------------------------------------------------------------
float x,y,d, vx, vy;
float score,heart;

//COLOR PLACE---------------------------------------------------------------------------------------------------------------------

void setup() {
  size(600, 600);
  vx = random(-5,5);
  vy = random(-5,5);
  x = width/2;
  y = height/2;
  d = 100;
  score = 0;
  heart = 3;
  mode = start;
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  minim = new Minim(this);

}




void draw() {
  if (mode == start) {
    Start();
  } else if (mode == menu) {
    Menu();
  } else if (mode == game) {
    Game();
  } else if (mode == pause) {
    Pause();
  } else if (mode == lose) {
    Lose();
  } else {
  }
}
