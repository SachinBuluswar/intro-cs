float[] yPos = new float[100];
float[] speed = new float[100];
int numDrops = 0;
float puddleSize = 0;

void setup() {
  size(1000, 600);
}

void draw() {
  background(100);
  for (int i = 0; i < numDrops; i++) {
    raindrop((i + 1) * 100, yPos[i], 20, 30);
    yPos[i] += speed[i];
    if (yPos[i] > height - 20) {
      yPos[i] = 0;
      puddleSize += 5;
    }
  }
  drawPuddle();
}

void raindrop(float xCenter, float yCenter, float w, float h) {
  triangle(xCenter - w/2, yCenter, xCenter + w/2, yCenter, xCenter, yCenter - h);
  arc(xCenter, yCenter, w, h, 0, PI); 
}

void drawPuddle() {
  fill(0, 0, 255);
  rect(0, height - puddleSize, width, puddleSize);
}

void mouseClicked() {
  if (numDrops < 100) {
    yPos[numDrops] = 0;
    speed[numDrops] = random(1, 5);
    numDrops++;
  }
}
