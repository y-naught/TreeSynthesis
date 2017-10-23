
import java.util.*;
import peasy.*;

Tree tree;

PeasyCam cam;

float min_dist = 2;
float max_dist = 50;

void setup() {
  
  size(1920, 1080, P3D);
  cam = new PeasyCam(this, 500);
  tree = new Tree();
}

void draw() {
  directionalLight(255, 255, 255, -1, 1, 0);
  directionalLight(255, 255, 255, -1, 1, 0);
  translate(0, - height / 4);
  background(0);
  tree.show();
  tree.grow();
  
  saveFrame("3DTree2-#####");
}

float log10(float x){
  return log(x) / log(10);
}