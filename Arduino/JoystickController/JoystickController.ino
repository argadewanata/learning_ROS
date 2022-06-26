#include <ros.h>
#include <package_joystick/joy.h>

ros::NodeHandle nh;

int VRy = A4;
int SW = 2;

int yPosition = 0;
int SW_state = 0;
int mapY = 0;

package_joystick::joy joystick_msg;

ros::Publisher pub("package_joystick/joystick", &joystick_msg);

void setup() {
  Serial.begin(57600);
  nh.getHardware() -> setBaud(57600);

  nh.initNode();
  nh.advertise(pub);
  
  pinMode(VRy, INPUT);
  pinMode(SW, INPUT_PULLUP); 
  
}

void loop() {
  yPosition = analogRead(VRy);
  SW_state = digitalRead(SW);
  mapY = map(yPosition, 0, 1023, 1000, 2000);
  
  Serial.print(" | Y: ");
  Serial.print(mapY);
  Serial.print(" | Button: ");
  Serial.println(SW_state);

  joystick_msg.posisi_y = mapY;
  pub.publish(&joystick_msg);
  
  nh.spinOnce();
  delay(100);
  
}
