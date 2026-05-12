void Start(){
  background(0);
  textSize(60);
  fill(255);
  text("boring clicker game", 300,300);

  fill(255);
  rect(300,450,200,100);
  fill(0);
  text("start", 300,450);
  fill(255);
  square(50,50,50);
  fill(0);
  textSize(10);
  text("menu",50,50);
    textSize(60);

}
void startClicks(){
  if (mouseX>200 && mouseX<600 && mouseY > 400 && mouseY< 500){
    mode = game;
  }
    if (mouseX>25 && mouseX<75 && mouseY > 25 && mouseY< 75){
    mode = menu;
  }
  
  
}
