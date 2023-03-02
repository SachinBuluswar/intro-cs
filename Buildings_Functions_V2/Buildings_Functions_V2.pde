void setup() {
  size(700, 500);
  rectMode(CORNERS);
}

void draw() {
  background(0, 0, 25);
  fill(200, 90, 50);
  drawBuilding(width/4, 300, 100, 200, 5);
  drawBuilding(2.5*width/4, 325, 150, 300, 8);
}

void drawBuilding(float xCenter, float yBottom, float w, float h, int numWindows) {
  float buildingHeight = h; // change this to adjust building height
  float doorWidth = w/4; // change this to adjust door width
  float floorHeight = buildingHeight/(numWindows+2); // height of each floor
  float windowHeight = floorHeight/2; // height of each window
  float windowSpacing = w/(numWindows+1); // spacing between each window

  // building structure
  fill(200, 90, 50);
  rect(xCenter - w/2, yBottom - buildingHeight, xCenter + w/2, yBottom);
  
  //door
  fill(100);
  rect(xCenter - doorWidth/5, yBottom, xCenter + doorWidth/2, yBottom - buildingHeight/7);
  
  //windows on each floor
  fill(255);
  for (int i = 1; i <= numWindows; i++) {
    float windowX = xCenter - w/2 + i * windowSpacing;
    float windowY = yBottom - (i+1) * floorHeight;
    rect(windowX - windowSpacing/4, windowY - windowHeight/2, windowX + windowSpacing/4, windowY + windowHeight/2);
  }
}
