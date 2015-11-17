class mvmt{
  int centerx, centery, offset1, offset2, offset3, offset4, q1, q2 ,q3;
  
  mvmt(){
    centerx = round(random(0, width));
    centery = round(random(0, height));
  }
  
  void words(){
    fill(#FFAC05);
    textSize(30);
    text("RAWR",centerx,centery);
   fill(#F5E979);
    text("RAWR", centerx+60,centery+120);
    fill(0);
    text("RAWR", centerx+30,centery+60);
  }
  
  void move(){
   if(keyPressed){
      if(key == 'w'){
        centery = centery - 30;
      } 
      if(key == 'a'){
        centerx = centerx - 30;
      }
      if(key == 'd'){
        centerx = centerx + 30;
      } 
      if(key == 's'){
        centery = centery + 30;
      }
    } 
  }

}