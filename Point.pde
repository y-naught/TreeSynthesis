class Point{
 
  PVector location;
  
  Point(PVector loc){
    location = loc.copy();
  }
  
  void display(){
   noStroke();
   fill(0, 255, 0);
   pushMatrix();
   translate(location.x, location.y, location.z);
   ellipse(0,0, 5,5);
   popMatrix();
  }
}