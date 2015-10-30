//declare variables
float x, y, velX, velY, diam;
float a, b, velA, velB, diam2;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  diam2 = 40;
  velX = random(-5, 5);
  velY = random(-5, 5);
  velA = random(-3, 3);
  velB = random(-3, 3);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x, y, diam, diam);
  ellipse(a, b, diam2, diam2);

  //add velocity to position
  x += velX;
  y += velY;
  a += velA;
  b += velB;

  //bounce ball if it hits walls
  if (x + diam/2 >= width) {
    velX = -abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - diam/2 <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y + diam/2 >= height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
  }
  
  if (a + diam2/2 >= width) {
    velA = -abs(velA);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (a - diam2/2 <= 0) {
    velA = abs(velA);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (b + diam2/2 >= height) {
    velB = -abs(velB);
  } else if (b - diam2/2 <= 0) {
    velB = abs(velB);
  }
}