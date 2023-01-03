class Raket { //<>//

  int bang =0;
  float lunte = 0.0;
  color farver;
  float xpos, ypos;
  int gram = 300;
  int r=1; // for at gøre radius størrer eller mindre...

  // Laver raketten mindre. fra 50 til 10
  int radiu = 10;

  Raket(int b, float l, color f) {
    bang = b;
    lunte = l;
    farver = f;
  }


  void visRaket() {
    // farv min raket i den farve jeg har valgt
    fill(farver);
    circle(xpos, ypos, radiu);
  }

  void setPos(float x, float y) {
    xpos = x;
    ypos = y;
  }

  void flytRaket() {

    if (ypos > gram && gram != 0) { // FORTSÆT OP
      xpos=xpos+1;
      ypos=ypos-2;
      
    } else { // NÅR HØJDEN ER NÅET - EKSPLODER!
      gram=0; // Vores markering for at højden er nået. Ikke god programmering men det virker.. //<>//
      radiu = radiu+r; // gør radius en størrer
      
      if (radiu>100) {
        r = -1;
      }
      else if(radiu<9) {
        radiu = 0; // så forsvinder den helt.
        r=0;      // nu skal vi hverken lægge til eller trække fra i radius. 
      }
      
    }
  }
}
