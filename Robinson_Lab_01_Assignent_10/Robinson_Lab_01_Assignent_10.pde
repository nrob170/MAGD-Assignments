int pressed = 0;// setting up state changes
int pressedstate = 0;
Timer myTimer; //calling Timer class
Castle myCastle;//calling Castle class
Coins MyCoins;//calling Coins Class
Coins[] coin;//I'm not sure what this does, but I need it
PImage mario;//these 3 call the images (appropriately named for each character)
PImage luigi;
PImage toad;
PImage castle;
PImage peach;
int numberCoins;//again not sure why I need this
float radius =40;
float circle_X = 792;
float circle_Y = 770;


void setup(){
  size(1000,1000);
  background(0);
  peach = loadImage("peach (1).jpg");
  mario = loadImage("mario.jpg");
  luigi = loadImage("Luigi_SPP2.jpg");
  toad = loadImage("PaperToadDTT.jpg");
  castle = loadImage("SMBCastle.jpg");
  myCastle = new Castle();
  coin = new Coins[1000];
  for (int x = 0; x < coin.length-1; x++){
    coin[x] = new Coins();
  }
  myTimer = new Timer (500);
  myTimer.timerStart();
}

void draw(){
  background(0);
  myCastle.display();

   update();
  
  if ( dist(mouseX, mouseY, circle_X, circle_Y) < radius) {//this will be the collision
    image(peach,0,0,1000,1000);
   
  } else {
    fill(255);
    ellipse(1,1,1,1);
   

 if(myTimer.isFinished()){
    numberCoins++;
    myTimer.timerStart();
  }
  if(numberCoins == coin.length-1){
    numberCoins = 0;
  }
  
  for(int newCoins = numberCoins; newCoins > 0 ; newCoins --){
    coin[newCoins].update();
    coin[newCoins].coine();
  }
}
}

  
  void keyPressed(){//this is how my state change is able to happen
    pressed = pressed + 1;
    pressed = (pressed % 3);
  }
  
  void update(){
     if (pressed==1){
   image(luigi,mouseX-50,mouseY-50,100,100);//these three are for a keypress to change the image that the mouse moves
  }else if (pressed==2){
    image(toad,mouseX-50,mouseY-50,100,100);
  }else{
    image(mario,mouseX-50,mouseY-50,100,100);
  }
  }