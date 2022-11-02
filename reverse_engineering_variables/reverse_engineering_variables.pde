float t = 25
void setup() { //called once
  size(1000, 1000);
}
 
void draw() { //in a loop
  background(0);
  fill(255, 0, 0);
  circle(
  width / 2,
  height / 2, 300);
  triange(0, 0, 0, 100, t, 50);
  t = t + 3;
  
  
}
 

  
 
