int pressed = 0;// setting up state changes
int pressedstate = 0;
Timer myTimer; //calling Timer class
Coins MyCoins;//calling Coins Class
Coins[] coin;//I'm not sure what this does, but I need it
PImage mario;//these 3 call the images (appropriately named for each character)
PImage wario;
PImage bowser;
PImage castle;
int numberCoins;//again not sure why I need this
void setup(){
  size(1000,1000);
  background(0);
  mario = loadImage("images.jpg");
  wario = loadImage("MKS_Wario.jpg");
  bowser = loadImage("bowser___art_v_2_by_tails19950-d5m54xw.jpg");
  castle = loadImage("SMBCastle.jpg");
  Coins = new Coins[1000];
  for (int x = 0; x < coin.length-1; x++){
    coin[x] = new Coins();
  }
  myTimer = new Timer (2743);
  myTimer.timerStart();
}

void draw(){
  background(0):
  