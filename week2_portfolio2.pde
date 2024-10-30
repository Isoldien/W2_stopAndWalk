// variables
// String for stop and walk
String textStop; // 
String textWalk; // 
// boolean that wil change on mouse click
boolean stop;
// position of rectangle
float rectX;
float rectY;
// position of text
float textPosX;
float textPosY;


void setup(){
  size(400, 400); // size of background
  background(171); // grey background for canvas 
  stop = true; // variable stop intialised to true
  
  // Intilalises String variables with value
  textStop = "Stop";
  textWalk = "Walk";
  
  // Intialise float variables with value
  rectX = 80;
  rectY = 60;
  textPosX = width/2;
  textPosY = width/2;
}

void draw(){
  // draws a rectangle either red or green with text stop or walk
  // depending on the value of boolean variable stop
  if (stop) {
    fill(255, 0, 0);
    rect(rectX, rectY, 250, 250);
    textSize(100);
    textAlign(CENTER);
    fill(0);
    text(textStop, textPosX, textPosY);
  }else {
    fill(0, 255, 0);
    rect(rectX, rectY, 250, 250);
    textSize(100);
    textAlign(CENTER);
    fill(0);
    text(textWalk, textPosX, textPosY);
  }
}

// inverts boolean variable when mouse is clicked
void mousePressed() {
  stop = !stop;
}
