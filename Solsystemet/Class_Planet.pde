class Planet {
  //atributer
  float x=250;
  float y=0;
  int radius=50;
  color planetColor=#0000ff;
  //constuktor
  Planet() {
  }
  //metoder
  void drawPlanet() {
    fill(planetColor);
    circle (x, y, radius);
  }
}
