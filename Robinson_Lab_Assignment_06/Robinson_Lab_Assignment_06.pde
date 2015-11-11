int posX = 400;
int posY = 400;
float pox = 750;
float poy = 650;
int balldi = 50;
int pressed = 0;
int pressedstate = 0;
float gravity=1;
float velocity = -5;
float jumpsize = -14;
boolean onbottom = false;
void setup(){
  size(1000,800);
  frameRate(60);
}

void draw(){
  background(0,0,50); 
  //cockpit
  if (pressedstate == 1){
    Stars();
   cockpit();
  }
else{
  //spaceship 
  textSize(50);
    text("Press key to enter cockpit",200,700);
    Spaceship();
  Stars(); 
  }
}


void cockpit(){
      fill(255,0,0,50);
    rect(-5,-5,1010,810);
  //vent on the left
    noStroke();
    fill(200);
    ellipseMode(CENTER);
    ellipse(500,800,1500,500);
    fill(100);
    rectMode(CORNERS);
    rect(30,660,170,770);
    for (int x = 50; x<=150; x=x+20){
    stroke(0);
    strokeWeight(5);
      line(x, 680,x, 750);
     //dots on side of cockpit
      ellipseMode(CENTER);
     fill(255,0,0);
      ellipse(900,650,30,30);
      fill(0,255,0);
      ellipse(900,700,30,30);
      fill(0,255,0);
      ellipse(900,750,30,30);
      fill(100);
      ellipse(500,680,300,100);
      rect(400,700,600,400);
    //center piece
    strokeWeight(50);
    point(500,500);
    strokeWeight(20);
    line(500,500,450,550);
    line(500,500,550,550);
    line(550,550,550,600);
    line(450,550,450,600);
     //making the moving eye dot thing that is future-y
      strokeWeight(53);
      stroke(0);
      line(750,650,750,750);
      strokeWeight(50);
      stroke(255,0,0);
      line(750,650,750,750);
      noStroke();
      fill(200,0,0);
      ellipse(pox,poy,balldi,balldi);
     //speech bubble from eyef
     strokeWeight(3);
     stroke(0);
     fill(255);
     beginShape();
     vertex(740,650);
     vertex(680,500);
     vertex(930,500);
     vertex(930,530);
     vertex(995,530);
     vertex(995,570);
     vertex(780,570);
     vertex(740,650);
     endShape();
     textSize(20);
     stroke(255);
     fill(0);
     text("It seems that it will be", 700,520);
     text("smooth sailing from here, sir.",701,550);
      velocity = gravity + velocity;
  poy = velocity + poy;
  if (poy + balldi >= (height)){
    poy = height - balldi;
    onbottom = true;
    }else{
      onbottom = false;
    }
    if (onbottom){
      jump();
    }
    }
}


void jump(){
  velocity = jumpsize;
}


void Spaceship(){
  fill(255,0,0,50);
  stroke(100);
  ellipseMode(CENTER);
  ellipse(750,363,60,125);
  stroke(100);
  fill(#C9C9C3);
  beginShape();
  vertex(350,275);
  vertex(350,450);
  vertex(400,475);
  vertex(400,575);
  vertex(250,600);
  vertex(500,600);
  vertex(625,525);
  vertex(625,475);
  vertex(725,475);
  vertex(825,425);
  vertex(725,400);
  vertex(725,325);
  vertex(825,300);
  vertex(725,250);
  vertex(625,250);
  vertex(625,200);
  vertex(500,125);
  vertex(250,125);
  vertex(400,150);
  vertex(400,250);
  vertex(350,275);
  endShape();
  for (int y=400; y<500; y=y+40){
  strokeWeight(3);
  stroke(100);
  line(y, 125, y+125, 200);
  }
  for (int q=400; q<500; q=q+40){
    line(q,600,q+125,525);
  }
  rectMode(CORNERS);
  rect(400,300,650,425);
  line(400,300,425,362.5);
  line(400,425,425, 362.5);
  line(425, 362.5,650,362.5);
}


void Stars(){
  random();
  strokeWeight(5);
  stroke(#FCFCBA);
  point(posX,posY);
}


void random(){
  posX = round(random(0,width));
  posY = round(random(0,height));
}


void keyPressed(){
  pressed = pressed + 1;
  pressedstate = (pressed % 2);
}