class Planet {
  //atributer
  float y=0;
  int radius;
  int baneRadius;
  color planetColor=#0000ff;
  int daysOfRotation;

  //constuktor
  Planet(int daysOfRotation, color c, int baneRadius, int radius) {
    this.daysOfRotation=daysOfRotation;
    this.baneRadius=baneRadius;
    this.radius=radius;
    planetColor = c;
  }
  //metoder
   void drawPlanet() {
    pushMatrix();
    rotate(2*PI*dayNumber/daysOfRotation);
    fill(planetColor);
    circle (baneRadius, y, radius);
    popMatrix();
  }
}
