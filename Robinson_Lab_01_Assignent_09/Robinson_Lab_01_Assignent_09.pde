Timer myTimer;
Turkey myTurkey;
Leaves[] Leaf;
PImage turk;
PImage leaphees;
int numberleaves;
void setup(){
  size(1000,800);
  background(0);
  myTurkey = new Turkey();
  turk = loadImage("thanksgiving-clip-art-turkey-with-brown-hat.jpg");
  leaphees = loadImage("465173.jpg");
  Leaf = new Leaves[1000];
  for (int x = 0; x < Leaf.length-1; x++){
      Leaf[x] = new Leaves();
  }  
  myTimer = new Timer (2743);
  myTimer.timerStart();
}

void draw(){
  background(#FFA908);
  image(leaphees,0,0,1000,800);
  myTurkey.display();
  if(myTimer.isFinished()){
    numberleaves++;
    myTimer.timerStart();
  }
  if(numberleaves == Leaf.length-1){
    numberleaves = 0;
  }
  
  for(int newLeaves = numberleaves; newLeaves > 0 ; newLeaves --){
    Leaf[newLeaves].update();
    Leaf[newLeaves].leaphs();
  }
}