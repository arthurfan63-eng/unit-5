float shipX1 = 200;
float shipY1 = 200;
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




int speed = 5;
void drawShip(float shipX,float shipY, float rotation) {
    float size = 20;

    // Front point
    float x1 = shipX + cos(rotation) * size;
    float y1 = shipY + sin(rotation) * size;

    // Back left
    float x2 = shipX + cos(rotation + 2.5) * size;
    float y2 = shipY + sin(rotation + 2.5) * size;

    // Back right
    float x3 = shipX + cos(rotation - 2.5) * size;
    float y3 = shipY + sin(rotation - 2.5) * size;

    triangle(x1, y1, x2, y2, x3, y3);
}


void moveShip(boolean rotateA,float rotation, boolean rotateD, boolean goW, float shipX, float shipY){
     if (rotateA == true) {
  rotation -= 0.1;
}

if (rotateD == true) {
  rotation += 0.1;
}

if (goW == true) {
  shipX += cos(rotation) * speed;
  shipY += sin(rotation) * speed;
} 
  
}






void Game() {

    drawShip(shipX1,shipY1,rotation1);
    moveShip(rotateA,rotation1,rotateD,goW,shipX1,shipY1);

}
