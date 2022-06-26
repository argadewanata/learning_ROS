#include <Servo.h>

byte servoPin = 10;
Servo servo;

int speed;

void setup()
{
  Serial.begin(9600);
  servo.attach(servoPin);
  servo.writeMicroseconds(1475);
  delay(1000);
}

void loop()
{
  // Normal       : 1100 <  x   < 1900
  //                1100 < 1500 < 1900

  // Thruster Lab : 1000  < x < 2000
  //                1000  < 1475 < 2000

  //backward
  speed = 1800;
  servo.writeMicroseconds(speed);
  delay(500);

  Serial.print("Speed:  ");
  Serial.print(speed);
  Serial.println();

  //  //stop
  //  speed = 1500;
  //  servo.writeMicroseconds(speed);
  //  delay(500);
  //
  //  Serial.print("Speed:  ");
  //  Serial.print(speed);
  //  Serial.println();
  //
  //
  //  //backward
  //  speed = 1600;
  //  servo.writeMicroseconds(speed);
  //  delay(500);
  //
  //  Serial.print("Speed:  ");
  //  Serial.print(speed);
  //  Serial.println();
  //
  //  //stop
  //  speed = 1500;
  //  servo.writeMicroseconds(speed);
  //  delay(500);
  //
  //  Serial.print("Speed:  ");
  //  Serial.print(speed);
  //  Serial.println();
}
