
boolean fire;
boolean fire2;
int tracker = 0;
float tx = 0;
float ty = 0;
void bullet(float x, float y,float pointx, float pointy, float enemyx,float enemyy){
  fill(255);

if (tracker == 0){

  tx = x;
  ty = y;
}
tracker = tracker+1;
float  vx = (tx -pointx)/20;
float vy = (ty - pointy)/20;  
  

print(tx);
  tracker = 1;  
  tx = tx+vx;
  ty = ty+vy;
  delay(1);

  circle(tx,ty,5);
 
}



ArrayList<Bullet> bullets = new ArrayList<Bullet>();

class Bullet {
  float x, y;
  float vx, vy;
  Bullet(float startX, float startY, float pointX, float pointY,float enemyX,float enemyY) {
    x = startX;
    y = startY;

    vx = (startX - pointX) / 2;
    vy = (startY - pointY) / 2;
  }

  void move() {
    x += vx;
    y += vy;
  }

  void show() {
    fill(255);
    circle(x, y, 5);
  }
}
