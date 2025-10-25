PImage img;

void setup() {
  size(800, 800, P2D);
  
  img = loadImage("galaxy2.jpg");
  
  img.resize(width, height);
  
  background(0);
}

void draw() {
  noLoop();
  
  int stepSize = 10;
  
  for (int y = 0; y < height; y += stepSize) {
    
    for (int x = 0; x < width; x += stepSize) {
      
      color c = img.get(x, y);
      
      float brightness = brightness(c);
      
      float shapeSize = map(brightness, 0, 255, 0, stepSize * 1.5);
      
      float angle = map(brightness, 0, 255, 0, TWO_PI);
      
      fill(255);
      noStroke();
      
      push();
      
      translate(x, y);
      
      rotate(angle);
      
      rectMode(CENTER);
      
      rect(0, 0, shapeSize, shapeSize);
      
      pop();
      
    } 
  } 
  
} 