void setup () {
  size(900, 600);
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

  christmastree ();

  translate (-300, 0);
  christmastree ();

  scale (0.5);
  translate (920, 0);
  christmastree ();
}

void christmastree () {
  fill(0, 150, 200);
  translate(0, -100);
  push ();
  beginShape();
  vertex (500, 700);
  vertex (630, 280);
  vertex (760, 700);
  endShape ();
  pop();

  push ();
  fill(20, 20, 50);
  beginShape();
  vertex (520, 550);
  vertex (630, 200);
  vertex (740, 550);
  endShape ();
  pop();


  push ();
  fill(100, 200, 50);
  beginShape();
  vertex (540, 401);
  vertex (630, 200);
  vertex (720, 401);
  endShape ();
  pop();
}

void shape() {
  push();
  fill(100, 200, 50);
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
