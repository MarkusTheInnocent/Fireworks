class Raket {

  int bang =0;
  float lunte = 0.0;
  color farver;
  float xpos, ypos;
  int gram = 790;
  int radiu = 50;

  Raket(int b, float l, color f) {
    bang = b;
    lunte = l;
    farver = f;
  }


  void visRaket() {
    circle(xpos, ypos, radiu);
  }

  void setPos(float x, float y) {
    xpos = x;
    ypos = y;
  }

  void flytRaket() {

    if (ypos > gram) {


      xpos++;
      ypos--;
    } else {
      radiu++;
      gram = 0;
    ypos--;
    }
    if (gram == 0 && radiu > 100) {
      radiu--;
      
      
    }
  }
}
