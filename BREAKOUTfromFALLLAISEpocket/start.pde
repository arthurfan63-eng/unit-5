void Start(){

 
  background(black);
  textSize(60);
  fill(white);
  text("boring ping game", 300,200);
  tactile(300,450,200,100,black);
  fill(white);
  rect(300,450,200,100);
  strokeWeight(0);
  tactile(50,50,50,50,red);
  fill(black);
  text("1 player", 300,450);
  
  fill(black);
  textSize(60);





}
void startClicks(){
  if (mouseX>200 && mouseX<600 && mouseY > 400 && mouseY< 500){
    mode = game;
    AI = true;
  }

 /*   if (mouseX>25 && mouseX<75 && mouseY > 25 && mouseY< 75){
    mode = menu;
  }*/
  
  
}
