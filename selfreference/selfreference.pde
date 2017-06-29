//600 pixel width holds 31 characters, each 19.354838709677419 pixels wide

PFont font;
String testString = "void setup() {";
int testStringLength = testString.length();
int testStringPosition = 1;

String testString2 = "  size(600,900)" + ';';
int testStringLength2 = testString2.length();
int testStringPosition2 = 1; //<>//

String testString3 = "}";
int testStringLength3 = testString3.length();
int testStringPosition3 = 1;

void setup() {
 size(600,900);
 font = loadFont("Courier-Bold-48.vlw");
 textFont(font, 26);

}

void draw() {
  if (testStringPosition <= testStringLength) {
    text(testString.substring(0,testStringPosition), 20, 100);
    println("line 1 ia " + testStringPosition);
    testStringPosition++;
    delay(100);
  } else if (testStringPosition2 <= testStringLength2) {
    text(testString2.substring(0,testStringPosition2), 20, 130); //<>//
    println("line 2 is " + testStringPosition2);
    testStringPosition2++;
    delay(100);
  } else if (testStringPosition3 <= testStringLength3) {
    text(testString3.substring(0,testStringPosition3), 20, 160);
    println("line 3 is " + testStringPosition3);
    testStringPosition3++;
    delay(100);    
  }
}