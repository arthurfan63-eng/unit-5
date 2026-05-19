void Menu(){

  background(red);
   line(100,50,100,300);
  circle(100,sliderY,25);
  tactile(400,450,150,100,red);
  fill(white);
  rect(400,450,150,100);
  stroke(255);
   d = map(sliderY,300,50,300,0);
   fill(black);
   textSize(30);
   text("continue",400,450);
   
   //color changers
   fill(white);
   stroke(black);
   tactile(100,400,75,75,red);
   square(100,400,75);
   stroke(white);
   fill(white);
   tactile(100,500,75,75,black);   
   square(100,500,75);   
   stroke(white);
 fill(colorsel);
 circle(350, 200, d);
  
}

void menuClicks(){
  
    if (mouseY <300 && mouseY > 50 && mouseX>90 && mouseX < 110){
     sliderY = mouseY;
  }
  
    if (mouseX>325 && mouseX<475 && mouseY > 450 && mouseY< 500){
    mode = start;
  }
  
    if (mouseX>100- (75/2) && mouseX<100+ (75/2) && mouseY > 400- (75/2) && mouseY< 400+ (75/2)){
    colorsel = red;
  }
    if (mouseX>100- (75/2) && mouseX<100+ (75/2) && mouseY > 500- (75/2) && mouseY< 500+ (75/2)){
    colorsel = black;
  }  
  
  
  
  
  
  
  
  
  
  
}


void menuDragg(){
     if (mouseY <300 && mouseY > 50 && mouseX>90 && mouseX < 110){
     sliderY = mouseY;
  }
  
  
  
  
}
