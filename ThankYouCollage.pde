//int   
int X= 100;
int Y= 500;
int bounce = 5;
PImage pic;
PImage reg;
PImage ninb;


//setup
void setup() {
  size(600, 600);
  pic = loadImage("reggiepic.png");
  pic.resize(200, 100);
  reg = loadImage("regreg.jpg");
  reg.resize(100, 100);
  ninb = loadImage("nintendopixlr.png");
  
}
void draw() {
  background(255, 0, 0);
  imageMode(CENTER);
 
  if (mousePressed) {
    fill(0);
    image(pic, 100, 100);
    image(reg, 500, 100);
    image(ninb,300,300);
    text("Thanks Reggie", X, Y, 100, 100);
    X=X+bounce;
    if(X>width-100 || X<0)
 {
   bounce=bounce*(-1);
 }
   
  } else {
    fill(255,0,0);
    noFill();
    fill(0);
    text("Press the circle below to show thanks!",100,100);
   
  }
  ellipse(300, 450, 100, 100);
  textSize(20);

}
