import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//sounds
Minim minim;
AudioPlayer theme,click,intro,boom;
 
int mode;
final int  start = 1;
final int  menu = 2;
final int  game = 3;
final int  pause = 4;
final int  lose = 5;
//TARGET VAR--------------------------------------------------------------------------------------------------------------------
float x,y,d, vx, vy;
int score,heart,hiScore;
float floater,floatie,sliderY;

//COLOR PLACE---------------------------------------------------------------------------------------------------------------------
color white = 255;
color black = 0;
color red =  #833D3D;
color yellow = #9D9A3E;
color colorsel = 0;
//soundCheck---
boolean soundoff = false;




void setup() {
  size(600, 600);
  vx = random(-5,5);
  vy = random(-5,5);
  x = width/2;
  y = height/2;
  hiScore = 0;
  score = 0;
  heart = 3;
  mode = start;
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  //minim
  minim = new Minim(this);

  //slider stuff
  floater = 5;
  floatie = 5;
  sliderY = 75;
  d = 50;

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















  
