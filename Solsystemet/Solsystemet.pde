import java.util.Calendar;
int inputDay;
int  inputMonth;
int  inputYear;
int dayNumber;

Stjerne sun=new Stjerne();
Planet merkur=new Planet(88, #0000ff, 75, 25);
Planet venus=new Planet(243, #0000ff, 125, 35);
Planet jorden=new Planet(365, #0000ff, 250, 50);
Planet mars=new Planet(686, #FF0000, 375, 25);
Planet jupitor=new Planet(4330, #0000ff, 500, 100);
Planet saturn=new Planet(10759, #0000ff, 700, 100);
Planet uranus=new Planet(30660, #0000ff, 800, 30);
Planet neptun=new Planet(60152, #0000ff, 900,30);
void setup() {
  fullScreen();
    // Example input date
  inputDay = 23;
  inputMonth =5;
  inputYear = 2004;
  calculateDayNumber();
}
void draw() {
  dayNumber=dayNumber+1;
  background(0);
  pushMatrix();
  translate(width/2,height/2);
  sun.drawSun();
  merkur.drawPlanet();
  venus.drawPlanet();
  jorden.drawPlanet();
  mars.drawPlanet();
  jupitor.drawPlanet();
  saturn.drawPlanet();
  uranus.drawPlanet();
  neptun.drawPlanet();
  popMatrix();
}

// Calculate day number of the year
void calculateDayNumber() {
  Calendar calendar = Calendar.getInstance();
  calendar.set(inputYear, inputMonth - 1, inputDay); // month is 0-based in Calendar
  dayNumber = calendar.get(Calendar.DAY_OF_YEAR);
}
