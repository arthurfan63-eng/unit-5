







boolean jump;






boolean CFramed;
boolean CFramea;
boolean CFramew;
boolean CFrames;

boolean humanoidd;
boolean humanoida;
boolean humanoidw;
boolean humanoids;

int V;

boolean grav;


int CFrameX;
float CFrameY;
 
int humanoidX;
float humanoidY;


int hurtbox;
float gravity;
void playerSetup(){
  
  
  CFrameX =100;
  CFrameY = 700;
  
   humanoidX = 1400;
  humanoidY = 700;
  
  V = 10;

  jump = false;
  grav = true;

}


void dplayerSetup(){
  
    if (grav == true)  gravity = .58;
  if (grav == false) gravity = 0;
 //CFrameY = CFrameY + gravity; 
// humanoidY = humanoidY + gravity;
 
 
 
 if(CFramea == true)CFrameX = CFrameX-V;    
 if(CFramed == true)CFrameX = CFrameX+V;    
 if(CFramew == true)CFrameY = CFrameY-V;    
 
 if (jump == true){
   int i = 1;
   while (i < 10){
  CFrameY = CFrameY -20;
  i = i+1;
  }
   
  delay(2);
  jump = false;
 }
 
}
