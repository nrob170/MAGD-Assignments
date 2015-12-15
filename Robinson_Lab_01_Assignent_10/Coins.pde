class Coins{
  int centerX, centerY, size;
 
  Coins(){
    centerX = round(random(width));
    centerY = 10;
    size = round(random(50, 100));
  }
  
  
  
  void update(){
    centerX = round(random(0)) + centerX;
    centerY = centerY + 1;
  }
  
  void coine(){//this is to represent a mario coin
    stroke(#938504);
    strokeWeight(1);
    fill(#FFEF5D);
    ellipse(centerX, centerY, 50,60);
    ellipse(centerX,centerY, 25,35);
    strokeWeight(3);
    line(centerX,centerY-8,centerX,centerY+8);
  }
}
    