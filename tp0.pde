//Tp0, animal a elección una araña
 PImage araña;

void setup() {
  size(800,400);
  araña = loadImage("araña.png");
}
void draw(){
  colorMode(RGB);
  background(245,221,173);
  image(araña, 400,0);
 
//cuerpo
fill(155,106,27);
noStroke();
circle(200,175,40);
circle(200,200,60);
fill(111,79,27);
ellipse(200,275,80,110);

//antenas
stroke(155,106,27);
strokeWeight(6);
line(185,150,190,160);
line(215,150,210,160);

//patas
stroke(155,106,27);
strokeWeight(8);
line(225,215,325,350);
line(230,205,260,225);line(260,225,350,175);
line(230,190,270,190); line(270,190,375,90);
line(225,180,260,160); line(260,160,275,75); line(275,75,250,50);
line(175,215,150,240); line(150,240,125,350);
line(170,205,125,250); line(125,250,50,275);
line(170,195,100,210); line(100,210,25,150);
line(172,185,125,150); line(125,150,115,75); line(115,75,135,50);

 fill(0);
 noStroke();
 rect(0,0,400,50); rect(0,350,400,50);
  
}  
