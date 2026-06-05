import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//sounds
Minim minim;
AudioPlayer theme,click,intro,boom,click2;
//MODESSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
int mode;
final int  start = 1;
final int  menu = 2;
final int  game = 3;
final int  pause = 4;
final int  lose = 5;
int ls,rs,timer;

void setup(){
  size(1400, 800);
  textAlign(CENTER,CENTER); 
  playerSetup();
mode = game;
}







void draw() {
  if (mode == start) {
    Start();
  } else if (mode == game) {
    Game();
  } else if (mode == pause) {
    Pause();
  } else if (mode == lose) { 
    Lose();
  } else {
  }
}































//tactile function
void tactile(float x, float y,float x1,float y1, color c){

 strokeWeight(5);
  if (mouseX>x- (x1/2) && mouseX<x+ (x1/2) && mouseY > y- (y1/2) && mouseY< y+ (y1/2)){
    stroke(c);
      textSize(50);
  } else{
    stroke(255);
  }
 fill(c);



}
