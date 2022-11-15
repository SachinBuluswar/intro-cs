int x = 20;
int y = 20;
int dx = 0;
int dy = 3;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  circle(x, y, 20);
  y = y + dy;
  x = x + dx;
  if (y >= 480) {
    dx = 3;
    dy= 0;
  }
  if (x >= 480) {
    dx = 0;
    dy = -3;
  }

  if (y <= 20) {
    dx = -3;
    dy = 0;
  }
  if (x == 20) {
    if (y == 20) {
      dy = 5;
      dx = 0;
    }
  }
}
