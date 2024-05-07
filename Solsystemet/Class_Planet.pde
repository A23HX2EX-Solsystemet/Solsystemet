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
    fill(planetColor);
    circle (x, y, radius);
  }
  
  void movePlanet(){
    x=x+1;
    y=y+0.1;
  }
}
