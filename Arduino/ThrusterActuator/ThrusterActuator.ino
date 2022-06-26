#include<ros.h>
#include<package_joystick/joy.h>
#include<Servo.h>

byte servoPin = 10;
Servo servo;

int speed;

ros::NodeHandle nh;


void messageCb(package_joystick :: joy&joystick_msg)
{
  servo.writeMicroseconds(joystick_msg.posisi_y);
}

ros::Subscriber<package_joystick :: joy>sub("package_joystick/joystick", &messageCb);

void setup() {
  Serial.begin(57600);
  nh.getHardware() -> setBaud(57600);
  servo.attach(servoPin);
  servo.writeMicroseconds(1475);
  nh.initNode();
  nh.subscribe(sub);
}

void loop() {
  nh.spinOnce();
  delay(500);
}
