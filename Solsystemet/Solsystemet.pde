import java.util.Calendar;
int inputDay;
int  inputMonth;
int  inputYear;
int dayNumber;

Stjerne sun=new Stjerne();
Planet merkur=new Planet(88, #0000ff);
Planet venus=new Planet(243, #0000ff);
Planet jorden=new Planet(365, #0000ff);
Planet mars=new Planet(686, #FF0000);
Planet jupitor=new Planet(4330, #0000ff);
Planet saturn=new Planet(10759, #0000ff);
Planet uranus=new Planet(30660, #0000ff);
Planet neptun=new Planet(60152, #0000ff);
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
  merkur.drawmerkur();
  venus.drawvenus();
  jorden.drawjorden();
  mars.drawmars();
  jupitor.drawjupitor();
  saturn.drawsaturn();
  uranus.drawuranus();
  neptun.drawneptun();
  popMatrix();
}

// Calculate day number of the year
void calculateDayNumber() {
  Calendar calendar = Calendar.getInstance();
  calendar.set(inputYear, inputMonth - 1, inputDay); // month is 0-based in Calendar
  dayNumber = calendar.get(Calendar.DAY_OF_YEAR);
}
