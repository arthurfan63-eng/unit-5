 import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//sounds
Minim minim;
AudioPlayer theme,click,intro,boom,click2;
 
int mode;
final int  start = 1;
final int  menu = 2;
final int  game = 3;
final int  pause = 4;
final int  lose = 5;
//paddle + ball VAR--------------------------------------------------------------------------------------------------------------------
float lx,ly,ld,rx,ry,rd, vx, vy;
int score,heart,hiScore;
float floater,floatie,sliderY;
float ballx,bally,balld;

//COLOR PLACE---------------------------------------------------------------------------------------------------------------------
color white = 255;
color black = 0;
color red =  #833D3D;
color yellow = #9D9A3E;
color colorsel = 0;
//soundCheck---
boolean soundoff = false;
//keyboard var
boolean wkee,skee,ukee,dkee;
//AI
boolean AI;
//scoreboard
int ls,rs,timer;

void setup() {
  size(800, 600);
  vx = random(-5,10);
  vy = random(5,10);
  lx = 0;
  ly = height/2;
  ld = 200;
  rx = width;
  ry = height/2;
  rd = 200;  
  ls = rs = timer = 0;
  ballx = width/2;
  bally = height/2;
  balld = 100;
  hiScore = 0;
  score = 0;
  heart = 3;
  mode = start;
  wkee=skee=ukee=dkee = false;
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("homelander-going-crazy-angry-violin-theme-song.mp3");
  click = minim.loadFile("freesound_community-thump-105302 (2).mp3");
  intro = minim.loadFile("Succession_TV_Theme-637376-mobiles24.mp3");
  boom = minim.loadFile("bithuh-vine-boom-392646.mp3");
  click2 = minim.loadFile("mrstokes302-cartoon-bonk-sfx-mrstokes302-424181.mp3"); 
  //slider stuff
  floater = 5;
  floatie = 5;
  sliderY = 75;


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















  
