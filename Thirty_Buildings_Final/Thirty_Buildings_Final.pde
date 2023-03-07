int numRows = 6;    // Number of rows
int numCols = 5;    // Number of columns
int buildingWidth;  // Width of each building
int buildingHeight; // Height of each building
int windowWidth;    // Width of each window
int windowHeight;   // Height of each window
int spacing = 20;   // Spacing between buildings

void setup() {
  size(800, 1300);
  background(255);
  noLoop();
}

void draw() {
  randomSeed(0);
  buildingWidth = int(random(50, 150));  // Random building width between 50 and 150 pixels
  buildingHeight = int(random(50, 200)); // Random building height between 50 and 200 pixels
  windowWidth = int(random(10, 30));     // Random window width between 10 and 30 pixels
  windowHeight = int(random(10, 30));    // Random window height between 10 and 30 pixels
  
  int x = spacing;
  int y = spacing;
  
  for (int i = 0; i < numRows; i++) {
    for (int j = 0; j < numCols; j++) {
      drawBuilding(x, y, buildingWidth, buildingHeight, int(random(2, 7)), windowWidth, windowHeight);
      x += buildingWidth + spacing;
    }
    x = spacing;
    y += buildingHeight + spacing;
  }
}

void drawBuilding(int x, int y, int w, int h, int numWindows, int ww, int wh) {
  color buildingColor = color(random(255), random(255), random(255));
  fill(buildingColor);
  stroke(0);
  rect(x, y, w, h);
  fill(0);
  rect(x + 45, y + 130, w/4, h/4);
  
  int windowSpacing = (w - (numWindows + 1) * ww) / (numWindows + 1);
  int windowY = y + h/4;
  
  for (int i = 0; i < numWindows; i++) {
    int windowX = x + (i+1) * windowSpacing + i * ww;
    fill(255);
    rect(windowX, windowY, ww, wh);
  }
}
