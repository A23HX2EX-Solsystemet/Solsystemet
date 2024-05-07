Stjerne sun=new Stjerne();
Planet planet=new Planet();
void setup() {
  size (1500, 1000);
}
void draw() {
  background(0);
  pushMatrix();
  translate(750,500);
  sun.drawSun();
  planet.drawPlanet();
  planet.movePlanet();
  popMatrix();
}
