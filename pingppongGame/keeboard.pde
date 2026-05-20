void keyPressed(){
  if (key == 'w' || key == 'W') wkee = true;
  if (key == 's' || key == 'S')  skee = true;
  if(keyCode ==UP) ukee = true;
  if(keyCode ==DOWN) dkee = true;  
}

void keyReleased(){
  if (key == 'w' || key == 'W') wkee = false;
  if (key == 's' || key == 'S')  skee = false;
  if(keyCode ==UP) ukee = false;
  if(keyCode ==DOWN) dkee = false;   
  
}
