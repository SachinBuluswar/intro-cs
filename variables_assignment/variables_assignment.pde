float f = 500;
float x = 500;
void setup() {
  
  size(1000, 1000);
  
}

void draw() { //loop
  background(100);
  square(f, 100, 150);
  f = f + 3;
  square(100, x, 150);
  x = x - 3;
  
}
