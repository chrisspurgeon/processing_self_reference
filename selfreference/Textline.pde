class Textline {
  String theString;
  int currentPosition;
  int stringLength;
  int theStartTime;
  int x;
  int y;
  int delay;
  
  Textline(int startTime, String textString, int xLocation, int yLocation, int startPosition) {
    theString = textString;
    currentPosition = startPosition;
    stringLength = theString.length();
    theStartTime = startTime;
    x = xLocation;
    y = yLocation;
  }
  
  void update() {
    if (millis() >= theStartTime) {
      text(theString.substring(0,currentPosition), x, y);
      if (currentPosition < stringLength) {
        currentPosition++;
        delay(delayTime);
      }
    }
  }
  
  
  
  void ping() {
    println("Hello from a ping object! The string is " + theString);
  }
  int getCurrentXPosition() {
    return x;
  }
  void setCurrentXPosition(int newX) {
    x = newX;
  }
  int getCurrentYPosition() {
    return y;
  }
  void setCurrentYPosition(int newY) {
    y = newY;
  }
  void updateText(String theNewText) {
    theString = theNewText;
    stringLength = theString.length();
  }
  void setCurrentPosition(int x) {
    currentPosition = x;
  }
}