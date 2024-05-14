class Planet {
  //atributer
  float y=0;
  int radius;
  int baneRadius;
  color planetColor=#0000ff;
  int daysOfRotation;
  int startDate;

  //constuktor
  Planet(int daysOfRotation, color c, int baneRadius, int radius, int startDate) {
    this.daysOfRotation=daysOfRotation;
    this.baneRadius=baneRadius;
    this.radius=radius;
    this.startDate=startDate;
    planetColor = c;
  }
  //metoder
   void drawPlanet() {
    pushMatrix();
    rotate(2*PI*(dayNumber+startDate)/daysOfRotation);
    fill(planetColor);
    circle (baneRadius, y, radius);
    popMatrix();
  }
}
