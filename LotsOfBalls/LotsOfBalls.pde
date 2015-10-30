//declaring arrays
//int[] numbers; 
//color[] c;
//float[] n;

//initializing arrays 
//numbers = new int[10];  //the list called numbers will create a new integer array with 10 spots
//c = new color[5];
//n = {35.6, 41.7, 2.0001};  //these are the values of all these three things


//delaring and initializing arrays
//int[] numbers = new int[200];



//declare variables
float[] x = new float[2];
float[] y = new float[2];
float[] velX = new float[2];
float[] velY = new float[2];
float[] diam = new float[2];
float[] a = new float[2];
float[] b = new float[2];
float[] velA = new float [2];
float[] velB = new float [2]; 
float[] diam2 = new float[2];



void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x[0] = width/2;
  y[0] = height/2;
  diam[0] = 80;
  diam2[0] = 40;
  velX[0] = random(-5, 5);
  velY[0] = random(-5, 5);
  velA[0] = random(-3, 3);
  velB[0] = random(-3, 3);
  
  x[1] = width/2;
  y[1] = height/2;
  diam[1] = 80;
  diam2[1] = 40;
  velX[1] = random(-5, 5);
  velY[1] = random(-5, 5);
  velA[1] = random(-3, 3);
  velB[1] = random(-3, 3);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam[0], diam[0]);
  ellipse(x[1], y[1], diam[1], diam[1]);

  //ellipse(a, b, diam2, diam2);

  //add velocity to position
  x[0] += velX[0];
  y[0] += velY[0];
  a[0] += velA[0];
  b[0] += velB[0];
  
  x[1] += velX[1];
  y[1] += velY[1];
  a[1] += velA[1];
  b[1] += velB[1];

  //bounce ball if it hits walls
  if (x[0] + diam[0]/2 >= width) {
    velX[0] = -abs(velX[0]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[0] - diam[0]/2 <= 0) {
    velX[0] = abs(velX[0]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[0] + diam[0]/2 >= height) {
    velY[0] = -abs(velY[0]);
  } else if (y[0] - diam[0]/2 <= 0) {
    velY[0] = abs(velY[0]);
  }
  
  if (a[0] + diam2[0]/2 >= width) {
    velA[0] = -abs(velA[0]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (a[0] - diam2[0]/2 <= 0) {
    velA[0] = abs(velA[0]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (b[0] + diam2[0]/2 >= height) {
    velB[0] = -abs(velB[0]);
  } else if (b[0] - diam2[0]/2 <= 0) {
    velB[0] = abs(velB[0]);
  }
  
  
  if (x[1] + diam[1]/2 >= width) {
    velX[1] = -abs(velX[1]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[1] - diam[1]/2 <= 0) {
    velX[1] = abs(velX[1]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[1] + diam[1]/2 >= height) {
    velY[1] = -abs(velY[1]);
  } else if (y[1] - diam[1]/2 <= 0) {
    velY[1] = abs(velY[1]);
  }
  
  if (a[1] + diam2[1]/2 >= width) {
    velA[1] = -abs(velA[1]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (a[1] - diam2[1]/2 <= 0) {
    velA[1] = abs(velA[1]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (b[1] + diam2[1]/2 >= height) {
    velB[1] = -abs(velB[1]);
  } else if (b[1] - diam2[1]/2 <= 0) {
    velB[1] = abs(velB[1]);
  }
  
}