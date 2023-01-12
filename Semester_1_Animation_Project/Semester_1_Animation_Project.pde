//I wanted to see if a human would guess a random location of a
//ball more than or less than 25% of the time.
//I tried to make an animation of Homer Simpson, but it didn't work.

float x, y; //ball location
int quadrant;
int score;
int lives = 10;
String result = "";
int choice;

void setup() {
  size(840, 500);
}

void draw() {
  x = random(width);//x position of the ball
  y = random(height);//y position of the ball


  if (x >= width / 2 && y >= width / 2) {
    quadrant = 1;
    if (x < width / 2 && y >= width / 2) {
      quadrant = 2;
      if (x < width / 2 && y < width / 2) {
        quadrant = 3;
        if (x >= width / 2 && y < width / 2) {
          quadrant = 4;
        }
      }
    }

    background(200); //gray
    fill(0);//black
    textSize(25);
    text("Guess which quadrant the ball is in!", width/2 - 180, 90);
    text("Press 1, 2, 3, or 4 to make your guess", width/2 - 180, 50);
    text("Press keys slowly", width / 2 - 90, 125);
    fill(225, 50, 50);
    text("Score: " + score, 100, 75);//score
    text("Lives: " + lives, width - 200, 75);//# of lives
    text(result, 100, 100);//you win or you lose
    fill(0, 150, 150);//tropical ocean blue
    text("Quadrant 1", width / 2 + 250, height / 2 - 100);//quadrant 1
    text("Quadrant 2", 50, height / 2 - 100);//quadrant 2
    text("Quadrant 3", 50, height / 2 + 100);//qudarant 3
    text("Quadrant 4", width / 2 + 250, height / 2 + 100);//quadrant 4
    line(420, 0, 420, 500);//vertical line
    line(0, 250, 840, 250);//horizontal line
  }
}

void keyPressed() {
  fill(255, 0, 0);
  circle(x, y, 25);//red ball with diameter 25

  if (key == '1') {
    choice = 1;
  }
  else if (key == '2') {
    choice = 2;
  }
  else if (key == '3') {
    choice = 3;
  }
  else if (key == '4') {
    choice = 4;
  }

  fill(0);
  if ((quadrant == 1 && choice == 1) || (quadrant == 2 && choice == 2) || (quadrant == 3 && choice == 3) || (quadrant == 4 && choice == 4 )) {
    score++;
    result = "Nice!";//user scores
  } else {
    lives --;
    result = "You miss!";//user misses
  }

  if (lives == 0) {
    result = "Game Over!";//stops the game at 0 lives
  }
  if (lives < 0) {
    lives = 0;//ensures lives aren't negative
    result = "Game Over!";
  }
}
