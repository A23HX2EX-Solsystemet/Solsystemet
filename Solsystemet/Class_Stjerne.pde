class Stjerne {
  //atributer
  float x=0;
  float y=0;
  int radius=50;
  color sunColor=#ffff00;
  //constuktor
  Stjerne() {
  }
  //metoder
  void drawSun() {
    fill(sunColor);
    circle (x, y, radius);
  }
}
