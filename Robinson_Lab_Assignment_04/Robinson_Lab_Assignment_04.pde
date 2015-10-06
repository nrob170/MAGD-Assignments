int pressed = 0;
int pressedState = 0;
int a = 600;
int b = 700;
int c = 500;
int d = 550;
int e = 350;
void setup (){
  size(1400,1000);
}
//background, then image focused on mousePress
void draw(){
  background(255);
  fill(0);
  rectMode(CORNERS);
  rect(0,1000,1400,800);
  rect(0,0,50,800);
  rect(0,50,1400,0);
  rect(1400,0,1350,800);
  textSize(100);
  fill(255);
  text("Ambiguity", 450, 900);
  textSize(15);
  text("Yet another reason why English is so silly", 550, 940);
  if(pressedState==1){
    fill(#0A9322);
  noStroke();
  rectMode(CORNERS);
  rect(50,450,1350,800);
  fill(#9CD9F5);
  rect(50,450,1350,50);
  fill(170);
  rect(50,520,1350,800);
  strokeWeight(10);
  stroke(0);
  //sign
  line(200,375,200,475);
  fill(255);
  strokeWeight(3);
  rect(150,375,250,285);
  textSize(20);
  fill(0);
  text("fine", 185,305);
  text("for", 187, 325);
  text("parking",170,345);
  text("here",175, 365);
  //vehicle
  fill(255);
  beginShape();
  vertex(50,600);
  vertex(280,600);
  vertex(270,500);
  vertex(50,500);
  vertex(120,500);
  vertex(60,420);
  vertex(50,420);
  endShape();
  ellipse(150,600,100,100);
  //person
  strokeWeight(15);
  line(e,b,350,c);
  line(e,530,300,570);
  line(e,530,290,490);
  ellipse(e,480,80,80);
  point(335,460);
  strokeWeight(2);
  ellipse(330,490,30,20);
  stroke(200);
  beginShape();
  vertex(330,490);
  vertex(305,460);
  vertex(310,400);
  vertex(400,390);
  vertex(450,360);
  vertex(450,330);
  vertex(430,300);
  vertex(400,290);
  vertex(300,300);
  vertex(290,330);
  vertex(280,360);
  vertex(280,370);
  vertex(290,390);
  vertex(300,420);
  vertex(300,470);
  endShape();
  //complaint
  fill(0);
  text("But Officer!",310,320);
  text("The sign says", 310,340);
  text("it's fine to park", 300,360);
  text("here!", 310, 380);
  //cop
  strokeWeight(15);
  stroke(0);
  line(225,500,225,700);
  line(225,530,200,550);
  line(200,550,180,530);
  ellipse(225,470,80,80);
  beginShape();
  vertex(185,450);
  vertex(265,450);
  vertex(275,430);
  vertex(225,420);
  vertex(175,430);
  vertex(185,450);
  endShape();
  //ticket
  strokeWeight(2);
  fill(#FFFBA5);
  rectMode(CORNERS);
  rect(160,500,200,530);
  strokeWeight(15);
  //arm over ticket
  line(225,530,200,520);
  //money sign on ticket
  fill(0);
  text("$",175,520);
  fill(255);
    ellipse(225,470,80,80);
  beginShape();
  vertex(185,450);
  vertex(265,450);
  vertex(275,430);
  vertex(225,420);
  vertex(175,430);
  vertex(185,450);
  endShape();
  }else{
    fill(#0A9322);
  noStroke();
  rectMode(CORNERS);
  rect(50,450,1350,800);
  fill(#9CD9F5);
  rect(50,450,1350,50);
  fill(170);
  rect(50,520,1350,800);
  strokeWeight(10);
  stroke(0);
  //sign
  line(200,375,200,475);
  fill(255);
  strokeWeight(3);
  rect(150,375,250,285);
  textSize(20);
  fill(0);
  text("fine", 185,305);
  text("for", 187, 325);
  text("parking",170,345);
  text("here",175, 365);
  //vehicle
  fill(255);
  beginShape();
  vertex(50,600);
  vertex(280,600);
  vertex(270,500);
  vertex(50,500);
  vertex(120,500);
  vertex(60,420);
  vertex(50,420);
  endShape();
  ellipse(150,600,100,100);
  //person
  strokeWeight(15);
  stroke(0);
  line(e,a,e,c);
  line(e,a,330,650);
  line(330,650,300,b);
  line(e,a,380,650);
  line(380,650,400,b);
  line(e,530,320,560);
  line(320,560,300,610);
  line(e,530,380,560);
  line(380,560,400,510);
  ellipse(350,470,80,80);
  point(335,460);
  point(365,460);
  arc(350,480,30,20,0,PI);
  }
}

void mousePressed (){
  pressed = pressed + 1;
  pressedState = (pressed % 2);
}