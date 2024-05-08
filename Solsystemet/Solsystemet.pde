import java.util.Calendar;
int inputDay;
int  inputMonth;
int  inputYear;
int dayNumber;

Stjerne sun=new Stjerne();
Planet jorden=new Planet(365, #0000ff);
Planet mars=new Planet(686, #FF0000);
void setup() {
  size (1500, 1000);
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
  translate(750,500);
  sun.drawSun();
  jorden.drawPlanet();
  mars.drawmars();
  popMatrix();
}

// Calculate day number of the year
void calculateDayNumber() {
  Calendar calendar = Calendar.getInstance();
  calendar.set(inputYear, inputMonth - 1, inputDay); // month is 0-based in Calendar
  dayNumber = calendar.get(Calendar.DAY_OF_YEAR);
}
