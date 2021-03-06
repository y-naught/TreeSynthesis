
boolean pointsOn = false;

class Tree {
  ArrayList<Branch> branches = new ArrayList<Branch>();
  ArrayList<Leaf> leaves = new ArrayList<Leaf>();
  ArrayList<Point> points = new ArrayList<Point>();

  Tree() {
    for (int i = 0; i < 3000; i++) {
      leaves.add(new Leaf());
    }    
    Branch root = new Branch(new PVector(0, 0), new PVector(0, -1));
    branches.add(root);
    Branch current = new Branch(root);

    while (!closeEnough(current)) {
      Branch trunk = new Branch(current);
      branches.add(trunk);
      current = trunk;
    }
  }

  boolean closeEnough(Branch b) {

    for (Leaf l : leaves) {
      float d = PVector.dist(b.pos, l.pos);
      if (d < max_dist) {
        return true;
      }
    }
    return false;
  }

  void grow() {
    for (Leaf l : leaves) {
      Branch closest = null;
      PVector closestDir = null;
      float record = -1;

      for (Branch b : branches) {
        PVector dir = PVector.sub(l.pos, b.pos);
        float d = dir.mag();
        if (d < min_dist) {
          l.reached();
          closest = null;
          break;
        } else if (d > max_dist) {
        } else if (closest == null || d < record) {
          closest = b;
          closestDir = dir;
          record = d;
        }
      }
      if (closest != null) {
        closestDir.normalize();
        closest.dir.add(closestDir);
        closest.count++;
      }
    }

    for (int i = leaves.size()-1; i >= 0; i--) {
      if (leaves.get(i).reached) {
        leaves.remove(i);
      }
    }

    for (int i = branches.size()-1; i >= 0; i--) {
      Branch b = branches.get(i);
      if (b.count > 0) {
        b.dir.div(b.count);
        PVector rand = PVector.random2D();
        rand.setMag(0.3);
        b.dir.add(rand);
        b.dir.normalize();
        b.dir.mult(1);
        Branch newB = new Branch(b);
        branches.add(newB);
        b.reset();
      }
    }
  }

  void show() {
    if (pointsOn) {
      for (Leaf l : leaves) {
        l.show();
      }
    }
    //for (Branch b : branches) {
    for (int i = 0; i < branches.size(); i++) {
      Branch b = branches.get(i);
      if (b.parent != null) {
<<<<<<< HEAD
        float sw = map(i, 0, branches.size(), 2, 0);
        if (sw < 1) {
=======
        float sw = map(i, 0, branches.size(), 4, 0);
        if (sw < 2) {
>>>>>>> cdb795ebb9b2b07ff241c9b3cabb1604c78bd02e
          noStroke();
          fill(100, 155, 40);
          pushMatrix();
          translate(b.pos.x, b.pos.y, b.pos.z);
          //sphere(2);
          ellipse(0, 0, 5, 5);
          popMatrix();
        }
        strokeWeight(sw);
<<<<<<< HEAD
        stroke(40, 40, 20);
        //fill(60,60,30);
        //pushMatrix();
        //translate(b.pos.x, b.pos.y, b.pos.z);
        ////sphere(sw);
        //popMatrix();
        line(b.pos.x, b.pos.y, b.pos.z, b.parent.pos.x, b.parent.pos.y, b.parent.pos.z);
=======
        //stroke(40, 40, 20);
        fill(60,60,30);
        pushMatrix();
        translate(b.pos.x, b.pos.y, b.pos.z);
        sphere(sw);
        popMatrix();
        //line(b.pos.x, b.pos.y, b.pos.z, b.parent.pos.x, b.parent.pos.y, b.parent.pos.z);
>>>>>>> cdb795ebb9b2b07ff241c9b3cabb1604c78bd02e
      }
    }
  }
}