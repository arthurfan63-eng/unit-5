void mouseReleased(){
  if (mode == start){
    startClicks();
  }else if (mode == game){
   gameClicks(); 
  }else if (mode == menu){
   menuClicks(); 
  }else if (mode == lose){
   loseClicks(); 
  }else if (mode == pause){
   pauseClicks(); 
  }
  
  
  
  
  
  
  
  
  
  
}
