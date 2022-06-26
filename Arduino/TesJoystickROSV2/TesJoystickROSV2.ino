#include <ros.h>
#include <package_tiga/joystick.h>

ros::NodeHandle nh;

int VRx = A5;
int VRy = A4;
int SW = 2;

int xPosition = 0;
int yPosition = 0;
int SW_state = 0;
int mapX = 0;
int mapY = 0;

package_tiga::joystick joystick_msg;

ros::Publisher pub("joystick", &joystick_msg);

void setup() {
  Serial.begin(57600);

  nh.initNode();
  nh.advertise(pub);
  
  pinMode(VRx, INPUT);
  pinMode(VRy, INPUT);
  pinMode(SW, INPUT_PULLUP); 
  
}

void loop() {
  xPosition = analogRead(VRx);
  yPosition = analogRead(VRy);
  SW_state = digitalRead(SW);
  mapX = map(xPosition, 0, 1023, -512, 512);
  mapY = map(yPosition, 0, 1023, -512, 512);
  
  Serial.print("X: ");
  Serial.print(mapX);
  Serial.print(" | Y: ");
  Serial.print(mapY);
  Serial.print(" | Button: ");
  Serial.println(SW_state);

  joystick_msg.posisi_x = mapX;
  joystick_msg.posisi_y = mapY;
  pub.publish(&joystick_msg);
  
  nh.spinOnce();
  delay(100);
  
}
