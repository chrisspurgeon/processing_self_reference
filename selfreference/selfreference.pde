//600 pixel width holds 31 characters, each 19.354838709677419 pixels wide


int delayTime = 100;

ArrayList<Textline> code = new ArrayList<Textline>();

PFont font;
int backgroundWidth = 0;
int backgroundHeight = 0; //<>//

boolean sizeBoxDone = false;
boolean changeToRed = false;

void setup() {
  code.add(new Textline(2000, "void setup() {", 10, 50, 0));
  code.add(new Textline(4000, "  size(600,900)" + ';', 10, 80, 0));
  code.add(new Textline(6500, "}", 10, 110, 0));
  code.add(new Textline(8900, "  background('green')" + ';', 10, 110, 2));
   size(600,900);
   font = loadFont("Courier-Bold-48.vlw");
   textFont(font, 26);

}

void draw() {
  Textline theLine;
  fill(255);

  if (millis() > 7000) {
    drawSizeBox();
  }
  if (millis() > 11400) { //change to green
    background(0,255,0);
  }
  if (millis() > 12500 && changeToRed == false) {
    theLine = code.get(3);
    theLine.updateText("  background('red')" + ';');
    theLine.setCurrentPosition(13);
    changeToRed = true;
  }
  if (millis() > 13500) {
    background(255,0,0);
  }

  
  
  
// draw all the lines of text  
  for (int i = 0; i < code.size(); i++) {
    theLine = code.get(i);
    theLine.update();
  }
} //<>//

void drawSizeBox() {
  rectMode(CENTER);
  if (backgroundWidth < width + 10 || backgroundHeight < height + 10) {
    fill(0);
    rect(width / 2, height / 2, backgroundWidth, backgroundHeight);
    backgroundWidth += 10;
    backgroundHeight += 15;
    fill(255);
  } else {
    if (sizeBoxDone == false) {
      background(0);
      delay(500);
      Textline theLine = code.get(2);
      if (theLine.getCurrentYPosition() == 110) {
        theLine.setCurrentYPosition(140);
        println("time is " + millis());
        sizeBoxDone = true;
      }
    }
  }
}


void mouseClicked() {
  println("Mouse clicked at " + millis());
}