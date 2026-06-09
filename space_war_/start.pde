float textS;

void Start(){
  background(0);

  for(int i = 1; i <= 100; i++){
    float randomx = random(0,width);
    float randomy = random(0,height);
    float size = random(1,10);
    float grow = random(.01,.1);
    float max = random(1,10);
  star(randomx,randomy,size,grow,max);
}
  for(int i = 1; i <= 100; i++){
 textS = 100 + sin(.5);
  }
  textSize(textS);
  text("Space War!",width/2,height/2-200);
}

void star(float x, float y,float size,float grow,float max){
 circle(x,y,size);
 size = size+grow;

 if(size <= max){
  size = size-grow; 
 }
   if(size <= .01){
  size = size+grow; 
 }
  
}
