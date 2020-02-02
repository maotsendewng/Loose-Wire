// Stolen from https://www.openprocessing.org/sketch/778989
ArrayList<Circle> circles = new ArrayList<Circle>();
float mx;
float my;
float speed = 0.05;

void setup() {
  size(1000, 1000);
  colorMode(HSB);
}


void draw() {
  background(0);
  noStroke();

  mx += (mouseX - mx)*speed;
  my += (mouseY - my)*speed;

  circles.add(new Circle(mx, my));

  for (int i=0; i<circles.size(); i++) {
    Circle c = circles.get(i);
    c.display();
    c.update();
    
    if (c.isDone()) circles.remove(c);
  }
}



class Circle {
  float x, y;
  float d;
  float hue;


  Circle(float _x, float _y) {
    x = _x;
    y = _y;
    d = width/3;
    hue = 120;
  }

  void display () {
    //fill(hue, 255, 255);
    rectMode(CENTER);
    noFill();
    stroke(hue, 255, 255);
    rect(x-(hue/100), y-(hue/100), d-(hue/100), d-(hue/100));
  }

  void update() {
    d -= 2;
    hue += 1;
    
   
  }
  
  boolean isDone() {
  if (hue == 255) return true;
  else return false;
  }
}
