#define VRx A5
#define VRy A4
#define SW 12

int xPosition = 0;
int yPosition = 0;
int SW_state  = 0;
int xMap      = 0;
int yMap      = 0;
int xFixMap   = 0;
int yFixMap   = 0;

void setup() {
  Serial.begin(9600);
  
  pinMode(VRx,INPUT);
  pinMode(VRy,INPUT);
  pinMode(SW,INPUT);
}

void loop() {
  xFixMap  = 0;
  yFixMap  = 0;
   
  xPosition = analogRead(VRx);
  yPosition = analogRead(VRy);
  xFixMap  = h_xCalibration(xPosition);
  yFixMap  = h_yCalibration(yPosition);

  delay(200);
  
  display_to_serial_monitor(xFixMap,yFixMap);
}

int h_xCalibration (int xPosition)
{
  xMap = map(xPosition,0,1023,-512,512);
  
  if ((xMap > 20) || (xMap < -20))
  {
    return xFixMap = xMap;
  }
  else 
  {
    return xFixMap = 0;
  }
}

int h_yCalibration (int h_yCalibration)
{
  yMap = map(yPosition,0,1023,-512,512);

  if ((yMap > 20) || (yMap < -20))
  {
    return yFixMap = -yMap;
  }
  else 
  {
    return yFixMap = 0;
  }  
}

void display_to_serial_monitor (int xFixMap,int yFixMap)
{
  
  Serial.print("X: ");
  Serial.print(xFixMap);
  Serial.print("  | Y: ");
  Serial.print(yFixMap);
  Serial.println();
}
