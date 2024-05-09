import java.util.Calendar;
int inputDay;
int  inputMonth;
int  inputYear;
int dayNumber;

Stjerne sun=new Stjerne();
//Alle planerters størelser er divideret med 400
Planet merkur=new Planet(88, #88878a, 57, 6); //afstand fra solen 1:1 i millioner af km
Planet venus=new Planet(243, #ff952b, 108, 15);//afstand fra solen 1:1 i millioner af km
Planet jorden=new Planet(365, #0000ff, 149, 16);//afstand fra solen 1:1 i millioner af km
Planet mars=new Planet(686, #FF0000, 228, 8);//afstand fra solen 1:1 i millioner af km
Planet jupitor=new Planet(4330, #cf7923, 390, 175);//afstand fra solen 1:2 i millioner af km
Planet saturn=new Planet(10759, #cfb8cf, 719, 146);//afstand fra solen 1:2 i millioner af km
Planet uranus=new Planet(30660, #7ae4ff, 820, 63);//afstand fra solen 1:3.5 i millioner af km
Planet neptun=new Planet(60152, #0095ff, 906,62);//afstand fra solen 1:5 i millioner af km Kilde https://www.nasa.gov/wp-content/uploads/2015/01/yoss_act1.pdf 
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
