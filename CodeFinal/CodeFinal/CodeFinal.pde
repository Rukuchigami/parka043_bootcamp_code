///////////////////////////////
//Anna Parker
//Code Final Project
//////////////////////////////
PImage img;
//Global Variables
//before picking up pencil
int x; 
int y;
//after pencil pickup
int x2;
int y2;

int speed = 5;

void setup(){
  img = loadImage("deskBackground.jpg");
   background(img);
  size(414, 736);
  smooth(5);
  noStroke();
  x= 50; 
  y = 550; 
  x2 = 50;
  y2 = 400;

}//end of setup

void draw() {
   noStroke();
   
   /////////////////////
   //this is a hack:
   //if(millis() > 2500){
    //fill(255); 
   //}
   if(millis()< 2500){
    fill(255, 0, 0, 15);
    ellipse(x, y, 10, 10);
   }
  //////////////////////
  
  if (y > 220) {
    y = y - speed;
  }
  if (y == 220 && x < 300 ) {
    x = x + speed;
  }


  //make the second line 
  println(millis());
  if (millis()>2200) {
      fill(255, 0, 0, 15);
      ellipse(x2, y2, 10, 10);
      x2 = x2 + speed;
      y2 = 400;
  }if (x2 == 240){
   x2 = x2 - speed; 
  }
  
  
  ////////////////////
  //kids are drawing
  stroke(0);
  strokeWeight(5);
  if (mouseButton == LEFT) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }else if (mouseButton == RIGHT){
    background(img);
    noStroke();
     line(mouseX, mouseY, pmouseX, pmouseY);
  }
  ////////////////////
  
  
}//end of draw loop