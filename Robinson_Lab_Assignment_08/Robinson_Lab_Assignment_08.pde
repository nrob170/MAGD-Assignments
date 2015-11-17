int pressed = 0;
int pressedstate = 0;
Timer myTimer;
animals myanimals;
mvmt mymvmt;
PImage G;
PImage S;

void setup(){
  size(1000,800);
  myTimer = new Timer(7000);
  myanimals = new animals();
  mymvmt = new mvmt();
  G = loadImage("Grassland.jpg");
  S = loadImage("Savannah.jpg");
  
  
}

void draw(){
  background(255);
  if (pressedstate==1){
    image(G,0,0,width,height);
    myanimals.tiger();
    mymvmt.move();
  }else{
   image(S,0,0,width,height);
    myanimals.lion();
   mymvmt.move();
  }
  if (myTimer.isFinished()){
    mymvmt.words();
  }
}

void mousePressed(){
  pressed = pressed + 1;
  pressedstate = (pressed % 2); 
}