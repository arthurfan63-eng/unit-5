float shipX1 = 0;
float shipY1 = 0;
float rotation1 = 0;
float speed1 = 3;

boolean rotateA = false;
boolean rotateD = false;
boolean goW = false;


float shipX2 = 400;
float shipY2 = 200;
float rotation2 = 0;
float speed2 = 3;

boolean rotateA2 = false;
boolean rotateD2 = false;
boolean goW2 = false;

float frontip2x;
float frontip2y;


int speed = 5;
void drawShip(float shipX, float shipY, float rotation) {
  float size = 20;

  //Frontp
  float x1 = shipX + cos(rotation) * size;
  float y1 = shipY + sin(rotation) * size;
  
  //Backl
  float x2 = shipX + cos(rotation + 2.5) * size;
  float y2 = shipY + sin(rotation + 2.5) * size;

  // Backr
  float x3 = shipX + cos(rotation - 2.5) * size;
  float y3 = shipY + sin(rotation - 2.5) * size;

  triangle(x1, y1, x2, y2, x3, y3);
}








void Game() {
  background(0);
  fill(255);
  drawShip(shipX1, shipY1, rotation1);
 
    if (rotateA == true) {
    rotation1 -= 0.1;
  }

  if (rotateD == true) {
    rotation1 += 0.1;
  }

  if (goW == true) {
    shipX1 += cos(rotation1) * speed;
    shipY1 += sin(rotation1) * speed;
  }
  
  ship2();










 








}







void ship2(){
     fill(150);  
    drawShip(shipX2, shipY2, rotation2);

    if (rotateA2 == true) {
    rotation2 -= 0.1;
  }

  if (rotateD2 == true) {
    rotation2 += 0.1;
  }

  if (goW2 == true) {
    shipX2 += cos(rotation2) * speed;
    shipY2 += sin(rotation2) * speed;
  }

if (keyPressed) {
  if (key == 'o' || key == 'O') {
    bullets.add(
      new Bullet(
        shipX2,
        shipY2,
        shipX2 - cos(rotation2) * 20,
        shipY2 - sin(rotation2) * 20,
        shipX1,
        shipX2
      )
    );
  }
}

   
for (Bullet b : bullets) {
  b.move();
  b.show();
  b.hit(shipX1,shipY1);


  
}









  
}
