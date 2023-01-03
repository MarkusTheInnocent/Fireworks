Raket r;

void setup() {
  r = new Raket(5, 10.0, #006699);
  size(800, 800);
  r.setPos(0, 800);
}


void draw() {

// nulstil baggrund
background(225);

  r.visRaket();
  r.flytRaket();
  
  
  
}
