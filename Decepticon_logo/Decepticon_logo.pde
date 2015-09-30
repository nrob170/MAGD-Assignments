//decepticon, remember to use triangles!!!
void setup(){
  size(800,800);
  
}
void draw(){
  background(0);
  strokeWeight(5);
  stroke(255);
  fill(186,96,211);
  beginShape();
  vertex(mouseX+13,mouseY-6);
  vertex(mouseX+33,mouseY-33);
  vertex(mouseX+58,mouseY-181);
  vertex(mouseX+25,mouseY-125);
  vertex(mouseX-25,mouseY-125);
  vertex(mouseX-58,mouseY-181);
  vertex(mouseX-33,mouseY-33);
  vertex(mouseX-13,mouseY-6);
  vertex(mouseX+13,mouseY-6);
endShape();

beginShape();
vertex(mouseX,mouseY+33);
vertex(mouseX+33,mouseY-13);//first corner
vertex(mouseX+119,mouseY-33);//first indent point
vertex(mouseX+125,mouseY-57);//point above first
vertex(mouseX+57,mouseY-39);//first out strecth
vertex(mouseX+60,mouseY-56);//above first outstretch
vertex(mouseX+125,mouseY-75);//2nd indent
vertex(mouseX+125,mouseY-93);//above 2nd indent
vertex(mouseX+62,mouseY-75);//2nd outstretch
vertex(mouseX+69,mouseY-109);//point above 2nd outstretch
vertex(mouseX+132,mouseY-125);//corner before right tip
vertex(mouseX+175,mouseY-200);//right tip
vertex(mouseX+154,mouseY-43);//drop from right corner
vertex(mouseX,mouseY+175);//bottom
vertex(mouseX-154,mouseY-43);//drom from left corner
vertex(mouseX-175,mouseY-200);//left tip
vertex(mouseX-132,mouseY-125);//corner before left tip
vertex(mouseX-69,mouseY-109);//point above 3rd outstretch
vertex(mouseX-62,mouseY-75);//3rd outstretch
vertex(mouseX-125,mouseY-93);//above 3rd indent
vertex(mouseX-125,mouseY-75);//3rd indent
vertex(mouseX-60,mouseY-56);//above 4th outstretch
vertex(mouseX-57,mouseY-39);//4th outstretch
vertex(mouseX-125,mouseY-57);//point above fourth
vertex(mouseX-119,mouseY-33);//fourth indent point
vertex(mouseX-33,mouseY-13);//last corner
vertex(mouseX,mouseY+33);//bottom
endShape();

triangle(mouseX+150,mouseY-12,mouseX+25,mouseY+169,mouseX+131,mouseY+100);
triangle(mouseX-150,mouseY-12,mouseX-25,mouseY+169,mouseX-131,mouseY+100);

fill(255);
triangle(mouseX-81,mouseY,mouseX-15,mouseY+31,mouseX-31,mouseY+65);
triangle(mouseX+81,mouseY,mouseX+15,mouseY+31,mouseX+31,mouseY+65);
triangle(mouseX,mouseY-43,mouseX+19,mouseY-87,mouseX-19,mouseY-87);
}