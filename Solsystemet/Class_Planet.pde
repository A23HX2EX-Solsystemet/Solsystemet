class Planet {
  //atributer
  float x=250;
  float y=0;
  int radius=50;
  color planetColor=#0000ff;
  int daysOfRotation;

  //constuktor
  Planet(int daysOfRotation, color c) {
    this.daysOfRotation=daysOfRotation;
    planetColor = c;
  }
  //metoder
  void drawPlanet() {
    pushMatrix();
    rotate(2*PI*dayNumber/daysOfRotation);
    fill(planetColor);
    circle (x, y, radius);
    popMatrix();
  }

  void drawmars() {
    pushMatrix();
    rotate(2*PI*dayNumber/daysOfRotation);
    fill(planetColor);
    circle (375, 0, 25);
    popMatrix();
  }
}
