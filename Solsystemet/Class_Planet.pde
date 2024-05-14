class Planet {
  //atributer
  float y=0;
  int radius, orbitRadius, daysOfRotation, startDate;
  color planetColor;
 

  //constuktor
  Planet(int daysOfRotation, color c, int orbitRadius, int radius, int startDate) {
    this.daysOfRotation=daysOfRotation;
    this.orbitRadius=orbitRadius;
    this.radius=radius;
    this.startDate=startDate;
    planetColor = c;
  }
  //metoder
   void drawPlanet() {
    pushMatrix();
    rotate(2*PI*(dayNumber+startDate)/daysOfRotation);
    fill(planetColor);
    circle (orbitRadius, y, radius);
    popMatrix();
  }
}
