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
      if (currentPosition <= stringLength) {
        println("Time to print " + theString);
        text(theString.substring(0,currentPosition), x, y);
        currentPosition++;
        delay(delayTime);
      }
    }
  }
  
  
  
  void ping() {
    println("Hello from a ping object! The string is " + theString);
  }
  int getCurrentPosition() {
    return x;
  }
  void setCurrentPosition(int newX) {
    x = newX;
  }
}