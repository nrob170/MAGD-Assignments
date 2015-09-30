void setup(){
  size(800,800);
}
void draw(){
background (0);
//autobot
strokeWeight(10);
stroke(255);
fill(255,0,0);
beginShape();
vertex(mouseX-25,mouseY+100);
vertex(mouseX+25,mouseY+100);//bottom
vertex(mouseX+25,mouseY);//right rise
vertex(mouseX+38,mouseY-80);//right side angle
vertex(mouseX, mouseY-63);//midpoint of top
vertex(mouseX-38, mouseY-80);//fall back down
vertex(mouseX-25,mouseY);
vertex(mouseX-25,mouseY+100);
endShape();

beginShape();
vertex(mouseX,mouseY-72);//bottom point
vertex(mouseX+125,mouseY-125);
vertex(mouseX+137,mouseY-175);
vertex(mouseX,mouseY-180);//midpoint
vertex(mouseX-137,mouseY-175);
vertex(mouseX-125,mouseY-125);
vertex(mouseX,mouseY-72);
endShape();

beginShape();
vertex(mouseX-34,mouseY);
vertex(mouseX-47,mouseY-85);
vertex(mouseX-134,mouseY-125);
vertex(mouseX-146,mouseY-180);
vertex(mouseX-200,mouseY-185);
vertex(mouseX-175,mouseY-50);
vertex(mouseX-112,mouseY-10);
vertex(mouseX-34,mouseY);
endShape();

beginShape();
vertex(mouseX+34,mouseY);
vertex(mouseX+47,mouseY-85);
vertex(mouseX+134,mouseY-125);
vertex(mouseX+146,mouseY-180);
vertex(mouseX+200,mouseY-185);
vertex(mouseX+175,mouseY-50);
vertex(mouseX+112,mouseY-10);
vertex(mouseX+34,mouseY);
endShape();

beginShape();
vertex(mouseX-163,mouseY-32);
vertex(mouseX-121,mouseY-5);
vertex(mouseX-121,mouseY+17);
vertex(mouseX-87,mouseY+37);
vertex(mouseX-87,mouseY+163);
vertex(mouseX-153,mouseY+113);
vertex(mouseX-163,mouseY-32);
endShape();

beginShape();
vertex(mouseX+163,mouseY-32);
vertex(mouseX+121,mouseY-5);
vertex(mouseX+121,mouseY+17);
vertex(mouseX+87,mouseY+37);
vertex(mouseX+87,mouseY+163);
vertex(mouseX+153,mouseY+113);
vertex(mouseX+163,mouseY-32);
endShape();

beginShape();
vertex(mouseX-30,mouseY+10);
vertex(mouseX-30,mouseY+100);
vertex(mouseX+30,mouseY+100);
vertex(mouseX+30,mouseY+10);
vertex(mouseX+83,mouseY+34);
vertex(mouseX+83,mouseY+167);
vertex(mouseX+58,mouseY+190);
vertex(mouseX+30,mouseY+138);
vertex(mouseX-30,mouseY+138);
vertex(mouseX-58,mouseY+190);
vertex(mouseX-83,mouseY+167);
vertex(mouseX-83,mouseY+34);
vertex(mouseX-30,mouseY+10);
endShape();

beginShape();
vertex(mouseX-54,mouseY+192);
vertex(mouseX+54,mouseY+192);
vertex(mouseX+28,mouseY+136);
vertex(mouseX-28,mouseY+136);
vertex(mouseX-56,mouseY+185);
endShape();

fill(255);
beginShape();
vertex(mouseX-30,mouseY+10);
vertex(mouseX-83,mouseY+34);
vertex(mouseX-121,mouseY+17);
vertex(mouseX-121,mouseY-5);
vertex(mouseX-30,mouseY+10);
endShape();

beginShape();
vertex(mouseX+30,mouseY+10);
vertex(mouseX+83,mouseY+34);
vertex(mouseX+121,mouseY+17);
vertex(mouseX+121,mouseY-5);
vertex(mouseX+30,mouseY+10);
endShape();

triangle(mouseX,mouseY-120,mouseX-40,mouseY-140,mouseX+40,mouseY-140);
line(mouseX-150,mouseY-100,mouseX-75,mouseY-63);
line(mouseX-150,mouseY-75,mouseX-75,mouseY-38);
line(mouseX+150,mouseY-100,mouseX+75,mouseY-63);
line(mouseX+150,mouseY-75,mouseX+75,mouseY-38);























}