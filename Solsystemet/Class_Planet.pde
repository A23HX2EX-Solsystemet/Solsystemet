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
   void drawmerkur() {
    pushMatrix();
    rotate(2*PI*dayNumber/daysOfRotation);
    fill(planetColor);
    circle (75, 0, 25);
    popMatrix();
  }
   void drawvenus() {
    pushMatrix();
    rotate(2*PI*dayNumber/daysOfRotation);
    fill(planetColor);
    circle (125, y, 35);
    popMatrix();
  }
  void drawjorden() {
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
   void drawjupitor() {
    pushMatrix();
    rotate(2*PI*dayNumber/daysOfRotation);
    fill(planetColor);
    circle (500, y, 100);
    popMatrix();
  }
   void drawsaturn() {
    pushMatrix();
    rotate(2*PI*dayNumber/daysOfRotation);
    fill(planetColor);
    circle (700, y, 100);
    popMatrix();
  }
   void drawuranus() {
    pushMatrix();
    rotate(2*PI*dayNumber/daysOfRotation);
    fill(planetColor);
    circle (800, y, 30);
    popMatrix();
  }
   void drawneptun() {
    pushMatrix();
    rotate(2*PI*dayNumber/daysOfRotation);
    fill(planetColor);
    circle (900, y, 30);
    popMatrix();
  }
}
