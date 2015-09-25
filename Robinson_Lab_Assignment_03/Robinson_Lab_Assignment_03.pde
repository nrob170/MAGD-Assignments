void setup(){
 size(800,800);
  background(0);
  
}
  void draw(){
   background(0);
    rectMode(CENTER);
    rect(mouseX+5, mouseY+5,300,300);
    
    if (mousePressed){
      rectMode(CENTER);
      fill(100,250,100);
      rect(mouseX+2,mouseY+2,50,50);
    }
    else{
      rect(mouseX+5,mouseY+5,300,300);
    }
    
      
   
   
    
  }