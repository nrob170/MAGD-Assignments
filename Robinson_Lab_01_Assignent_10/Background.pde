class Castle{
  
  void display(){
  noStroke();
  fill(0);
  rect(0,0,1000,1000);
  fill(#792B07);
  rect(0,800,1000,1000);
  stroke(0);
  strokeWeight(2);
  line(0,800,1000,800);//this is the brick at the bottom. I coud have done a for loop, but I dont understand the mehcanics of them and it woud have taken me longer than just putting them in
  line(0,850,1000,850);
  line(0,900,1000,900);
  line(0,950,1000,950);
  line(0,1000,1000,1000);
  line(100,850,100,900);
  line(200,850,200,900);
  line(300,850,300,900);
  line(400,850,400,900);
  line(500,850,500,900);
  line(600,850,600,900);
  line(700,850,700,900);
  line(800,850,800,900);
  line(900,850,900,900);
  line(50,800,50,850);
  line(150,800,150,850);
  line(250,800,250,850);
  line(350,800,350,850);
  line(450,800,450,850);
  line(550,800,550,850);
  line(650,800,650,850);
  line(750,800,750,850);
  line(850,800,850,850);
  line(950,800,950,850);
  line(50,900,50,950);
  line(150,900,150,950);
  line(250,900,250,950);
  line(350,900,350,950);
  line(450,900,450,950);
  line(550,900,550,950);
  line(650,900,650,950);
  line(750,900,750,950);
  line(850,900,850,950);
  line(950,900,950,950);
  line(100,950,100,1000);
  line(200,950,200,1000);
  line(300,950,300,1000);
  line(400,950,400,1000);
  line(500,950,500,1000);
  line(600,950,600,1000);
  line(700,950,700,1000);
  line(800,950,800,1000);
  line(900,950,900,1000);
  
  //castle
  image(castle,600,400,400,400);
  }
 
}