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
  
  void coine(){
    