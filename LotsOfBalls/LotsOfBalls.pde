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

int count = 300;

float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];


void setup() {
  
  //set size of canvas
  
  size(800, 600);
  noStroke();
  frameRate(20);
  
  //initialize variables
  
  for(int i = 0; i < count; i++){
    x[i] = random(width);
    y[i] = random(height);
    diam[i] = random(5, 100);
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
  }
  
}

void draw() {
  
  //draw background to cover previous frame
  
  background(0);


for(int i = 0; i < count; i++){
  
  //draw ball
  
  fill(0, random(255), random(150));
  ellipse(x[i], y[i], diam[i], diam[i]);

  //add velocity to position
  
  x[i] += velX[i];
  y[i] += velY[i];  
   
  //bounce ball if it hits walls
  
  if (x[i] + diam[i]/2 >= width) {
    velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[i] - diam[i]/2 <= 0) {
    velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[i] + diam[i]/2 >= height) {
    velY[i] = -abs(velY[i]);
  } else if (y[i] - diam[i]/2 <= 0) {
    velY[i] = abs(velY[i]);
  }
   
  }
  
}