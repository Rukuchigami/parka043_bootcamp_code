//Global Variables
PImage img;
PFont myFont;

void setup(){
  size(992, 460);
  img = loadImage("doctors.png");
  myFont = loadFont("TrajanPro-Bold-48.vlw");
}

void draw(){
  textFont(myFont,50);
  fill(153,153,153);
  text("Doctor Who", width/2-210, height/2+170);
  
 int x =int(random(img.width));
 int y =int(random(img.height));
 int loc = x + y*img.width;
 loadPixels();
 
 float r = red (img.pixels[loc]);
 float g = green(img.pixels[loc]);
 float b = blue(img.pixels[loc]);
 
 fill(r,g,b,100);
 rect(x,y,10,10);
  
  
}
