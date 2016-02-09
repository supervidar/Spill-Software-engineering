
float a2;

class ground {
  void drawGround() {   // lager bakken med elementer
    fill(179, 107, 0);
    rect(0, 600, 1200, 600);  //ground

    fill(204, 122, 0, 70);
    rect(0, 650 + a2, 1200, 600);  //ground
    fill(179, 107, 0);
    rect(0, 700 + a2, 1200, 500);  //ground
    fill(204, 122, 0, 70);
    rect(0, 750 + a2, 1200, 500);  //ground
    fill(179, 107, 0);
    rect(0, 800 + a2, 1200, 400);  //ground
    fill(204, 122, 0, 70);
    rect(0, 850 +a2, 1200, 400);  //ground
    fill(179, 107, 0);
    rect(0, 900 + a2, 1200, 300);  //ground
    fill(204, 122, 0, 70);
    rect(0, 950 + a2, 1200, 500);  //ground

    a2 = a2 + 15;
    if ( a2 > 40) {
      a2 = -50;
    }
  }
}