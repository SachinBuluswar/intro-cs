void setup () {
  size(700, 500);
}

void draw() {
  fill(100, 200, 100);
  shape();

  translate(200, 100);
  shape();

  scale(0.5);
  fill(0, 0, 0);
  translate(0, 350);
  shape();
}

void shape() {
  push();
  translate(-500, -350);
  beginShape();
  vertex(620, 510);
  vertex(250, 400);
  vertex(830, 450);
  vertex(900, 420);
  vertex(950, 450);

  endShape(CLOSE);
  pop();
}
