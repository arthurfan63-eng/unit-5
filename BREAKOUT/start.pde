void Start(){
  theme.rewind(); 
  intro.play();
 
  background(black);
  image(hl,0,100,width,height);
  textSize(60);
  fill(white);
  textFont(theBoys);
  textSize(60); 
  text("BREAKOUT", 400,25);
  tactile(width/2,height/2,200,100,black);
  fill(white);
//  rect(width/2,height/2,200,100);
  strokeWeight(0);
  tactile(50,50,50,50,red);
  fill(black);
//  text("1 player", width/2,height/2);
  
  fill(black);
  textSize(60);





}
void startClicks(){
  if (mouseX>0 && mouseX<width && mouseY > 0 && mouseY< height){
    mode = game;
    AI = true;
  }

 /*   if (mouseX>25 && mouseX<75 && mouseY > 25 && mouseY< 75){
    mode = menu;
  }*/
  
  
}
