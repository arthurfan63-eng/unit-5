void mouseReleased(){
  if (mode == start){
    startClicks();
  }else if (mode == game){
   gameClicks(); 
  }else if (mode == lose){
   loseClicks(); 
  }else if (mode == pause){
   pauseClicks(); 
  }
}
  
  
  
