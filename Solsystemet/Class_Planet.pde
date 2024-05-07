class Planet {
  //atributer
  float x=250;
  float y=0;
  int radius=50;
  color planetColor=#0000ff;
  int daysOfRotation;
  
  //constuktor
  Planet(int daysOfRotation) {
    this.daysOfRotation=daysOfRotation;
  }
  //metoder
  void drawPlanet() {
    circle(0, 0, 200);
  rotate(2*PI*dayNumber/daysOfRotation);
    fill(planetColor);
    circle (x, y, radius);
  }
  
 
}
