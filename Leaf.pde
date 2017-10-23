

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
    //y = random(3 * height / 7);
    //float angle = random(TWO_PI);
    
    //x = 50 * log(y) * sin(angle) + random(-100, 100);
    //z = 50 * log(y) * cos(angle) + random(-100, 100);
    
    y = random(3 * height / 7) - 50;
    
<<<<<<< HEAD
    float exp = 3.5;
    
    x = random(-map(pow(y,exp), 0, pow(3 * height / 7, exp), 10, 150), map(pow(y,exp), 0, pow(3 * height / 7, exp), 10, 150));
    z = random(-map(pow(y,exp), 0, pow(3 * height / 7, exp), 10, 150), map(pow(y,exp), 0, pow(3 * height / 7, exp), 10, 150));
    
    //float a = 5;
    //float b = 5;
    //float c = 5;
    
    //x = random(-50, 150);
    //y = random(-100, 100);
    
    //z = pow(abs((pow(c,2) * (1 - (pow(x, 2) / pow(a, 2)) - (pow(y, 2) / pow(b, 2))))), 0.5);
    ////println(z);
    
=======
    x = random(-map(y, 0, 3 * height / 7, 10, 200), map(y, 0, 3 * height / 7, 10, 200));
    z = random(-map(y, 0, 3 * height / 7, 10, 200), map(y, 0, 3 * height / 7, 10, 200));
>>>>>>> cdb795ebb9b2b07ff241c9b3cabb1604c78bd02e
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