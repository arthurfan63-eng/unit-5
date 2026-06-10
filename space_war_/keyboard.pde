void keyPressed() {

  if (key == 'a' || key == 'A') {
    rotateA = true;
  }

  if (key == 'd' || key == 'D') {
    rotateD = true;
  }

  if (key == 'w' || key == 'W') {
    goW = true;
  }
  
    if (key == 'j' || key == 'J') {
    rotateA2 = true;
  }

  if (key == 'l' || key == 'L') {
    rotateD2 = true;
  }

  if (key == 'i' || key == 'I') {
    goW2 = true;
  }
  
  
  
    if (key == 'o' || key == 'O') {
    fire2 = true;
  }
}



void keyReleased() {

  if (key == 'a' || key == 'A') {
    rotateA = false;
  }

  if (key == 'd' || key == 'D') {
    rotateD = false;
  }

  if (key == 'w' || key == 'W') {
    goW = false;
  }
      if (key == 'j' || key == 'J') {
    rotateA2 = false;
  }

  if (key == 'l' || key == 'L') {
    rotateD2 = false;
  }

  if (key == 'i' || key == 'I') {
    goW2 = false;
  }
}
