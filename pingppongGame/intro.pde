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
  tactile(300,350,200,100,black);
  fill(white);
  rect(300,350,200,100);
  fill(black);

  text("2 player", 300,350); 
  
  
  
  
  strokeWeight(0);
  fill(white);
  square(50,50,50);
  fill(black);
  textSize(10);
  text("menu",50,50);
  textSize(60);
  soundoff = false;


}
void startClicks(){
  if (mouseX>200 && mouseX<600 && mouseY > 400 && mouseY< 500){
    mode = game;
  }
    if (mouseX>25 && mouseX<75 && mouseY > 25 && mouseY< 75){
    mode = menu;
  }
  
  
}
