int mode;
final int  start = 1;
final int  menu = 2;
final int  game = 3;
final int  pause = 4;
final int  lose = 5;


void setup() {
  size(600, 600);



  mode = start;
}




void draw() {
  if (mode == start) {
  } else if (mode == menu) {
    Menu();
  } else if (mode == game) {
    Game();
  } else if (mode == pause) {
    Pause();
  } else if (mode == lose) {
    Lose();
  } else {
  }
}
