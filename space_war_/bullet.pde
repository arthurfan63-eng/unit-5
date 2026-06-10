
boolean fire;
boolean fire2;
int tracker = 0;
float tx = 0;
float ty = 0;
void bullet(float x, float y,float pointx, float pointy){
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
