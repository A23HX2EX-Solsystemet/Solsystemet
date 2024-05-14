import java.util.Calendar;
import g4p_controls.*;
int inputDay;
int  inputMonth;
int  inputYear;
int dayNumber;
int value = 0;
int hastighed;



Stjerne sun=new Stjerne();
//De nedestående planerters størelser er divideret med 400
Planet merkur=new Planet(88, #88878a, 57, 6); //afstand fra solen 1:1 i millioner af km
Planet venus=new Planet(243, #ff952b, 108, 15);//afstand fra solen 1:1 i millioner af km
Planet jorden=new Planet(365, #0000ff, 149, 16);//afstand fra solen 1:1 i millioner af km
Planet mars=new Planet(686, #FF0000, 228, 8);//afstand fra solen 1:1 i millioner af km
//De nedestående planeter radius er divideret med 500
Planet jupitor=new Planet(4330, #cf7923, 312, 139);//afstand fra solen 1:2,5 i millioner af km
Planet saturn=new Planet(10759, #cfb8cf, 449, 116);//afstand fra solen 1:3,2 i millioner af km
Planet uranus=new Planet(30660, #7ae4ff, 574, 50);//afstand fra solen 1:5 i millioner af km
Planet neptun=new Planet(60152, #0095ff, 647, 49);//afstand fra solen 1:7 i millioner af km Kilde https://www.nasa.gov/wp-content/uploads/2015/01/yoss_act1.pdf

void setup() {
  fullScreen();
  //Example input date
 // inputDay=1;
  //inputMonth =1;
  //inputYear = 2024;
  calculateDayNumber();
 //value=0;
  createGUI();
  customGUI();
}

void keyPressed() {
  if (value == 0) {
   value = 0;
  } else {
  value = 0;
  }
}

void draw() {
   dayNumber=dayNumber+value;
  background(0);
  pushMatrix();
  translate(width/2, height/2);
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
  calendar.set(inputYear, inputMonth-1, inputDay); // month is 0-based in Calendar
  dayNumber = calendar.get(Calendar.DAY_OF_YEAR);
  dayNumber=dayNumber+inputYear;
}

public void customGUI() {
}
