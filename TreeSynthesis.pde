
import java.util.*;
import peasy.*;

Tree tree;

PeasyCam cam;

float min_dist = 2;
float max_dist = 50;

void setup() {
  size(1920, 1080, P3D);
  cam = new PeasyCam(this, 650);
  tree = new Tree();
}

void draw() {
  translate(0, -height / 4);
  background(0);
  tree.show();
  tree.grow();
  
  saveFrame("3DTree-#####");
}

float log10(float x){
  return log(x) / log(10);
}