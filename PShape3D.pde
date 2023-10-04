PShape car;
PImage txtr;
float theta;

void setup() {
  size (600, 600, P3D);
  txtr = loadImage("texture-01.jpg");
  car = loadShape("Humvee.obj");
  car.setTexture(txtr); //attach texture to the 3D shape
}


void draw () {
  background (0);
  //lights();

  pushMatrix();
  translate (width/2, height/2);
  rotate(theta);
  rotateY(theta/2);
  scale (1.5);
  shape (car);
  popMatrix();

  theta+=.01; //increment angle
}
