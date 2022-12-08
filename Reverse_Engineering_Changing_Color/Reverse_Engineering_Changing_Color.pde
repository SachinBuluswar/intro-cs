int r = 0;
int g = 0;
int b = 0;
int x = 50;
int y = 50;
int dx = 3;
int dy = 1;

void setup() {
  size(1000, 1000);
}

void draw () {
  background (r, g, b);
  circle(x, y, 100);
  x = x + dx;
  y = y + dy;
  if (y == 950) {
    dy = -4;
    r = 0;
    g = 0;
    b = 0;
  }
  if (y == 50) {
    dy = 2;
    r = 255;
    g = 91;
    b = 165;
  }
  if (x == 950) {
    dx = -1;
    r = 0;
    g = 255;
    b = 0;
  }
  if (x == 50) {
    dx = 2;
    r = 0;
    g = 0;
    b = 255;
  }
}
