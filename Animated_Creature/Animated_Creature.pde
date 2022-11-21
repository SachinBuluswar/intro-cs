// Sachin Buluswar's Robot
int x = 650;
int y = 550;
int lefteyespeed = 1;
int  b = 0;
color eye_mouth= color(0, 0, 0);

void setup() {

  size(1200, 600);
}

void draw() {

  background(100, 100, 100);

  fill(200, 50, 150);//pink
  rect(500, 50, 200, 100);//head

  fill(0, 75, 150);//dark blue
  rect(490, 75, 10, 50);//left ear
  rect(700, 75, 10, 50);//right ear

  push();

  //translate(-15, 0);
  fill(255, 255, 150);//light yellow
  circle(x, 90, 50);//left eye
  x = x + lefteyespeed;
  if (x == 675) {
    lefteyespeed = -1;
  } else if (
    x == 525)
  {
    lefteyespeed = 1;
  }

  fill(eye_mouth);//black
  circle(x, 90, 20);//left pupil

  y = y + 1;

  pop();

  line(525, 60, 575, 60);//left eyebrow
  line(625, 60, 675, 60);//right eyebrow

  fill(eye_mouth);//black
  ellipse(600, 125, 75, 25);//mouth

  fill(255, 0, 0);//white
  triangle(575, 115, 595, 113, 585, 125);//upper left tooth
  triangle(605, 113, 625, 115, 615, 125);//upper right tooth
  triangle(590, 137.5, 610, 137.5, 600, 127.5);//bottom center tooth

  fill(255, 0, 0);//red
  rect(560, 150, 80, 25);//neck

  fill(50, 100, 255);//blue
  rect(450, 175, 300, 200);//chest

  fill(0, 50, 50);//green blue
  rect(525, 375, 50, 125);//left leg
  rect(625, 375, 50, 125);//right leg

  fill(200, 200, 200);//light gray
  circle(850, 267.5, 30);//right hand

  push();
  translate(450, 267.5);
  rotate(radians(b));
  b = b + 1;
  fill(250, 250, 0);//yellow
  rect(-100, -17.5, 100, 35);//left arm
  fill(200, 200, 200);//light gray
  circle(-100, 0, 30);//left hand
  pop();


  fill(250, 250, 0);//yellow
  rect(525, 175, 20, 200);//vertical stripe
  rect(450, 257.5, 300, 20);//horizontal stripe
  rect(750, 250, 100, 35);//right arm

  fill(235, 235, 235);//light gray
  circle(550, 525, 40);//left heel
  circle(650, 525, 40);//right foot

  fill(50, 50, 50);//dark gray
  rect(515, 500, 70, 25);//left foot
  rect(615, 500, 70, 25);//right foot
}
