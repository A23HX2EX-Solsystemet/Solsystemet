class Stjerne {
  //atributer
  float x=0, y=0;
  int radius=46; //størelses forhold 1:15000
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
