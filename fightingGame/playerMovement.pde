void keyPressed(){
  if (key == 'a' || key == 'A') CFramea = true;
  if (key == 'd' || key == 'D')  CFramed = true;
   if (key == 'w' || key == 'W')if(grav == false) jump = true;
  if (key == 's' || key == 'S')  CFrames = true;
  
  
  
  
   // if (key == 'a' || key == 'A') humanoida = true;
  //if (key == 'd' || key == 'D')  humanoids = true;
   // if (key == 'w' || key == 'W') humanoidw = true;
  //if (key == 's' || key == 'S')  humanoids = true;
}

void keyReleased(){
  if (key == 'a' || key == 'A') CFramea = false;
  if (key == 'd' || key == 'D')  CFramed = false;
   // if (key == 'w' || key == 'W') CFramew = false;
  if (key == 's' || key == 'S')  CFrames = false;
  
  //    if (key == 'a' || key == 'A') humanoida = false;
 // if (key == 'd' || key == 'D')  humanoids = false;
  //  if (key == 'w' || key == 'W') humanoidw = false;
 // if (key == 's' || key == 'S')  humanoids = false;

  
}
