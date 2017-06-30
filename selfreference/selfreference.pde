//600 pixel width holds 31 characters, each 19.354838709677419 pixels wide


int delayTime = 100;

ArrayList<Textline> code = new ArrayList<Textline>();

PFont font;
 //<>//

void setup() {
  code.add(new Textline(2000, "void setup() {", 10, 50, 0));
  code.add(new Textline(4000, "  size(600,900)" + ';', 10, 80, 0));
  code.add(new Textline(6500, "}", 10, 110, 0));
   size(600,900);
   font = loadFont("Courier-Bold-48.vlw");
   textFont(font, 26);

}

void draw() {
  for (int i = 0; i < code.size(); i++) {
    Textline theLine = code.get(i);
    theLine.update();
  }
} //<>//