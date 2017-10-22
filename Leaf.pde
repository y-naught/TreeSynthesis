
// Coding Rainbow
// Daniel Shiffman
// http://patreon.com/codingtrain
// Code for: https://youtu.be/JcopTKXt8L8


class Leaf {
  PVector pos;
  boolean reached = false;
  float x;
  float y;
  float z;
  float spreadX;
  float spreadY;
  float spreadZ;

  Leaf() {
    y = random(3 * height / 7);
    float angle = random(TWO_PI);
    
    x = 50 * log(y) * sin(angle) + random(1);
    z = 50 * log(y) * cos(angle) + random(1);
    
    pos = new PVector(x, y, z);
     
    //pos = PVector.random3D();
    //pos.mult(random(width/2));
    //pos.y -= height/4;
  
  }
  void reached() {
    reached = true;
    
  }

  void show() {
    fill(255);
    noStroke();
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    //sphere(4);
    ellipse(0,0, 4, 4);
    popMatrix();
  }
 }