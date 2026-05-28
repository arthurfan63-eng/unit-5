void mouseReleased(){
  if (mode == start){
    startClicks();
  }else if (mode == game){
   gameClicks(); 
  }else if (mode == menu){

  }else if (mode == lose){
   loseClicks(); 
  }else if (mode == pause){
   pauseClicks(); 
  }
  
  
  
  
  
  
  
  
  
  
}



void mouseDragged(){
    if (mode == start){
  //  startD();
  }else if (mode == game){
   //gameClicks(); 
  }else if (mode == menu){

  }else if (mode == lose){
 //  loseClicks(); 
  }else if (mode == pause){
//   pauseClicks(); 
  }
  
  
  
}
