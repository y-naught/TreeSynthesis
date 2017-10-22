
import java.util.*;
import peasy.*;

Tree tree;

PeasyCam cam;

float min_dist = 2;
float max_dist = 50;

void setup() {
  
  fullScreen(P3D);
  cam = new PeasyCam(this, 600);
  tree = new Tree();
}

void draw() {
  //directionalLight(255, 255, 255, -1, 1, 0);
  //directionalLight(255, 255, 255, -1, 0, 0);
  rotate(PI);
  translate(0,  -height / 6);
  background(0);
  tree.show();
  tree.grow();
  
  saveFrame("Bush80-#####");
}

float log10(float x){
  return log(x) / log(10);
}