#include<ros.h>
#include<std_msgs/Int16.h>
#include<Servo.h>

byte servoPin = 10;
Servo servo;

int speed;

ros::NodeHandle nh;

void messageCb(const std_msgs :: Int16&toggle_msg)
{
  servo.writeMicroseconds(toggle_msg.data);
}

ros::Subscriber<std_msgs :: Int16>sub("chatter", messageCb);

void setup() {
  Serial.begin(9600);
  nh.getHardware() -> setBaud(9600);
  servo.attach(servoPin);
  servo.writeMicroseconds(1475);
  nh.initNode();
  nh.subscribe(sub);
}

void loop() {
  nh.spinOnce();
  delay(500);
}
