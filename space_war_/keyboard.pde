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
}
