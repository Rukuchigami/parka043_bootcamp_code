////////////////////////////////
//Anna Parker
//Arrays
//Aug 11 2015
////////////////////////////////////////


//Variables
int numPos = 100;
//Arrays
int[]xPos = new int[numPos];
int[]yPos = new int[numPos];
////////////////////////////////////////
void setup() {
  //note that we made the sizee 500X500

  size(500, 500);
  smooth();
  //initalizing arrays
  for (int i = 1; i < numPos; i++) {
    xPos[i] = 1;
    yPos[i] = 1;
  }
}

void draw() {
   background(255);
  
  for( int i =0; i <xPos.length; i++){
    stroke(2);
    point(xPos[i], yPos[i]);
    
    strokeWeight(3);
    if(i<xPos.length -1){
     line(xPos[i], yPos[i], xPos[i+1], yPos[i+1]); 
    }
  }

    for ( int i =0; i <numPos-1; i++) {
      xPos[i] = xPos[i+1];
      yPos[i] = yPos[i+1];
    }

    xPos[numPos-1]=mouseX;
    yPos[numPos-1]=mouseY;

    for (int i = 0; i < numPos; i++) {
      fill(random(255), random(255), random(255));
      ellipse(xPos[i], yPos[i], 30, 30);
    }
  }
  
  void mousePressed(){
 xPos=append(xPos, mouseX);
 yPos=append(yPos, mouseY); //<>//
 println(xPos+""+ yPos);
 println(xPos.length);
}