 import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//sounds
Minim minim;
AudioPlayer theme,click,intro,boom,click2;
//giff-------------------------
PImage[] gif;
PImage hl;
int numberOfFrames;
int f;
PImage[] gif1;
int numberOfFrames1;
int f1;
//font
PFont theBoys;
//MODESSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
int mode;
final int  start = 1;
final int  menu = 2;
final int  game = 3;
final int  pause = 4;
final int  lose = 5;
//paddle + ball VAR--------------------------------------------------------------------------------------------------------------------
float px,py,pd, vx, vy;
int score,heart,hiScore;
float floater,floatie,sliderY;
float ballx,bally,balld;
int []x;
int []y;
boolean []alive;
int n,tempx,tempy;
//COLOR PLACE-----;----------------------------------------------------------------------------------------------------------------
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
  size(800, 800);
  theBoys = createFont("Charlie don't surf.ttf",1);
n = 42;
x = new int[n];
y = new int[n];
alive = new boolean[n];
gif = new PImage[0];
gif1 = new PImage[0];
tempx = tempy = 100;
  vx = random(5,10);
  vy = random(5,10);
  px = width/2;
  py = height;
  pd = 100;
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
 
  ls = rs = timer = 0;
  ballx = width/2;
  bally = height/2;
  balld = 10;
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
 hl = loadImage("hl.png");



//giffffffffffffffffffffffffff
f = 1;
numberOfFrames = 146;
gif = new PImage[numberOfFrames];

int i2 = 1;
while(i2<numberOfFrames){
  gif[i2] = loadImage("pic ("+i2+").gif");
  i2 = i2+1;
}





f1 = 1;
numberOfFrames1 = 113;
gif1 = new PImage[numberOfFrames1];

int i3 = 1;
while(i3<numberOfFrames1){
  gif1[i3] = loadImage("frame ("+i3+").gif");
  i3 = i3+1;
}

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















  
