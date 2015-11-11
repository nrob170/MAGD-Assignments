float posx = 170;
float posy = 170;
float balldi = 30;
int pressed = 0;
int pressedState = 0;
float velocity = 0.0;
float speed = 60;
boolean onground= false;
float jumpsize = -41;
float gravity = 0.9;
void setup(){
  size(1000,1000);
}

void draw(){
  background(#F7ECE1);
  update();
  
}




void update(){
  if(pressedState==1){
    background(#106F0A);
  
  fill(#106F0A);
  stroke(255);
  rect(109,900,901,100);
  rect(50,100,109,900);
  rect(960,100,901,900);
 
  for (int  x = 100; x<=900; x=x+36){
  strokeWeight(1);
  stroke(255);
  line(x +10, 100, x+10, 900);
  
  noFill();
  rectMode(CORNERS);
  rect(109,900,901,100);
  }
  
  stroke(0);
  fill(#7E4B14);
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY,100,50);
  strokeWeight(2);
  stroke(255);
  line(mouseX-25,mouseY,mouseX+25,mouseY);
  for(int y = 0; y<=50; y=y+7){
    line(mouseX+y-25,mouseY+5, mouseX+y-25, mouseY-5);
  }
}else{
    posy = velocity + posy;
  velocity = gravity + velocity;
  if (posy + balldi >= (height)){
    onground = true;
  }else{
    onground = false;
  } 
  if (onground){
    jump();
    }
    strokeWeight(1);
    stroke(0);
    fill(#8EF554);
    ellipse(posx,posy,balldi,balldi);
    posx = posx +speed;
    if(posx + balldi/2 >= width-10){
    speed = -60;
    noFill();
}else if (posx - balldi/2 <= 10){
    speed = 60;
}  noFill();
  rectMode(CORNERS);
  rect(650,600,900,1000);
  fill(#C6C6C6);
  ellipseMode(CENTER);
  ellipse(670,800,30,30);
  }

}



void jump(){
  velocity = jumpsize;
}

void mousePressed(){
  pressed = pressed + 1;
  pressedState = (pressed %2);
}