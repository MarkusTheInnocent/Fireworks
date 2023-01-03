Raket r;

void setup(){
  r = new Raket(5,10.0,#006699);
  size(800,800);
   r.setPos(0,800);
}


void draw(){
  
  
 
  r.visRaket();
  r.flytRaket();
}
