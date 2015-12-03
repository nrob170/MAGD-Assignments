class Leaves{
  int centerX, centerY, size;
 
  Leaves(){
    centerX = round(random(width));
    centerY = 10;
    size = round(random(50, 100));
  }
  
  
  
  void update(){
    centerX = round(random(0)) + centerX;
    centerY = centerY + 1;
  }

  void leaphs(){
   strokeWeight(10);
   stroke(0);
   fill(#FF3108);
   line(centerX,centerY,centerX,centerY-100);
   strokeWeight(2);
   ellipse(centerX, centerY, 70,150);
   line(centerX,centerY-75,centerX,centerY+80);
   line(centerX,centerY-50,centerX-40,centerY-30);
   line(centerX,centerY-50,centerX+40,centerY-30);
   line(centerX,centerY-25,centerX-50,centerY);
   line(centerX,centerY-25,centerX+50,centerY);
   line(centerX,centerY,centerX-40,centerY+25);
   line(centerX,centerY,centerX+40,centerY+25);
   line(centerX,centerY+25,centerX-35,centerY+55);
   line(centerX,centerY+25,centerX+35,centerY+55);
  }
}