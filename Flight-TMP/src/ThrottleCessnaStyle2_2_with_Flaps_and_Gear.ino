#include <Keypad.h>
#include <Joystick.h>

//DEFINITIONS
#define ENABLE_PULLUPS
#define NUMROTARIES 1 //replace "?" with number of rotary encoders you are using
#define NUMBUTTONS 0 //replace "?"with number of buttong you are using
#define NUMROWS 1 //replace "?" with number of rows you have
#define NUMCOLS 1 //replace "?" with number of columns you have

//MAX AND MIN FOR RUDDER, Right and Left Toe Brake
int MaxRudder = 0;
int MinRudder = 1023;
int MaxRTBrake = 0;
int MinRTBrake = 1023;
int MaxLTBrake = 0;
int MinLTBrake = 1023;


//BUTTON MATRIX
//first change number of rows and columns to match your button matrix,
//then replace all "?" with numbers (starting from 0)
byte buttons[NUMROWS][NUMCOLS] = {
  {0}

};

struct rotariesdef {
  byte pin1;
  byte pin2;
  int ccwchar;
  int cwchar;
  volatile unsigned char state;
};

//ROTARY ENCODERS
//each line controls a different rotary encoder
//the first two numbers refer to the pins the encoder is connected to
//the second two are the buttons each click of the encoder wil press
//do NOT exceed 31 for the final button number
rotariesdef rotaries[NUMROTARIES] {
  {0} //rotary 4

};

#define DIR_CCW 0x10
#define DIR_CW 0x20
#define R_START 0x0

#ifdef HALF_STEP
#define R_CCW_BEGIN 0x1
#define R_CW_BEGIN 0x2
#define R_START_M 0x3
#define R_CW_BEGIN_M 0x4
#define R_CCW_BEGIN_M 0x5
const unsigned char ttable[6][4] = {
  // R_START (00)
  {R_START_M,            R_CW_BEGIN,     R_CCW_BEGIN,  R_START},
  // R_CCW_BEGIN
  {R_START_M | DIR_CCW, R_START,        R_CCW_BEGIN,  R_START},
  // R_CW_BEGIN
  {R_START_M | DIR_CW,  R_CW_BEGIN,     R_START,      R_START},
  // R_START_M (11)
  {R_START_M,            R_CCW_BEGIN_M,  R_CW_BEGIN_M, R_START},
  // R_CW_BEGIN_M
  {R_START_M,            R_START_M,      R_CW_BEGIN_M, R_START | DIR_CW},
  // R_CCW_BEGIN_M
  {R_START_M,            R_CCW_BEGIN_M,  R_START_M,    R_START | DIR_CCW},
};
#else
#define R_CW_FINAL 0x1
#define R_CW_BEGIN 0x2
#define R_CW_NEXT 0x3
#define R_CCW_BEGIN 0x4
#define R_CCW_FINAL 0x5
#define R_CCW_NEXT 0x6

const unsigned char ttable[7][4] = {
  // R_START
  {R_START,    R_CW_BEGIN,  R_CCW_BEGIN, R_START},
  // R_CW_FINAL
  {R_CW_NEXT,  R_START,     R_CW_FINAL,  R_START | DIR_CW},
  // R_CW_BEGIN
  {R_CW_NEXT,  R_CW_BEGIN,  R_START,     R_START},
  // R_CW_NEXT
  {R_CW_NEXT,  R_CW_BEGIN,  R_CW_FINAL,  R_START},
  // R_CCW_BEGIN
  {R_CCW_NEXT, R_START,     R_CCW_BEGIN, R_START},
  // R_CCW_FINAL
  {R_CCW_NEXT, R_CCW_FINAL, R_START,     R_START | DIR_CCW},
  // R_CCW_NEXT
  {R_CCW_NEXT, R_CCW_FINAL, R_CCW_BEGIN, R_START},
};
#endif

//BUTTON MATRIX PART 2
byte rowPins[NUMROWS] = {0}; //change "?" to the pins the rows of your button matrix are connected to
byte colPins[NUMCOLS] = {3}; //change "?" to the pins the rows of your button matrix are connected to

Keypad buttbx = Keypad( makeKeymap(buttons), rowPins, colPins, NUMROWS, NUMCOLS);

//JOYSTICK SETTINGS
Joystick_ Joystick(JOYSTICK_DEFAULT_REPORT_ID,
                   JOYSTICK_TYPE_MULTI_AXIS,
                   0, //number of buttons
                   0, //number of hat switches
                   //Set as many axis to "true" as you have potentiometers for
                   true, // y axis - Throttle
                   true, // x axis - Prop
                   true, // z axis - Mixture
                   true, // rx axis - Left Toe Brake
                   true, // ry axis - Right Toe Brake
                   true, // rz axis - Rudder
                   false, // rudder
                   false, // throttle
                   false, // accelerator
                   false, // brake
                   false); // steering wheel

const int numReadings = 20;

int readings[numReadings];      // the readings from the analog input
int index = 0;              // the index of the current reading
int total = 0;                  // the running total
int currentOutputLevel = 0;

//POTENTIOMETERS PART 1
//add all the axis' which are enabled above
int xAxis_ = 0; // Throttle
int yAxis_ = 0; // Prop
int zAxis_ = 0; // Mixture
int RxAxis_ = 0; // L toe Brake
int RyAxis_ = 0; // R Toe Brake
int RzAxis_ = 0; // Rudder


//POTENTIOMETERS  PART 2
//Which pins are your potentiometers connected to?
int potentiometerPin1 = A5; //Change "?" to the pin your potentiometer is connected to
int potentiometerPin2 = A4;
int potentiometerPin3 = A3;
int potentiometerPin4 = A2;
int potentiometerPin5 = A1;
int potentiometerPin6 = A0;
const bool initAutoSendState = true;


void setup() {
  // Initialize Button Pins
  pinMode(9, INPUT_PULLUP); // NEED TO CHECK EXACT PINS
  pinMode(10, INPUT_PULLUP);
  pinMode(11, INPUT_PULLUP);
  pinMode(12, INPUT_PULLUP);

  Joystick.begin();
  rotary_init();
  for (int thisReading = 0; thisReading < numReadings; thisReading++) {
    readings[thisReading] = 0;
  }
}

// Constant that maps the phyical pin to the joystick button. WHY AREW ELSE HERE
const int pinToButtonMap = 9;

// Last state of the button
int lastButtonState[4] = {0,0,0,0};

void loop() {

  CheckAllEncoders();
  CheckAllButtons();
  CheckAllPotentiometers();
  // Read pin values POSSIBLE REMOVE
  for (int index = 0; index < 4; index++)
  {
    int currentButtonState = !digitalRead(index + pinToButtonMap);
    if (currentButtonState != lastButtonState[index])
    {
      Joystick.setButton(index, currentButtonState);
      lastButtonState[index] = currentButtonState;
    }
  }
}

//POTENTIOMETERS PART 3
//change the details to match teh details above for each potentiometer you are using
void CheckAllPotentiometers() {

  //potentiometer 1 - Throttle
  currentOutputLevel = getAverageOutput(potentiometerPin1);
  xAxis_ = map(currentOutputLevel, 0, 1023, 0, 1023);
  Joystick.setXAxis(xAxis_);

  //potentiometer 2 - Mixture
  currentOutputLevel = getAverageOutput(potentiometerPin2);
  yAxis_ = map(currentOutputLevel, 0, 1023, 0, 1023);
  Joystick.setYAxis(yAxis_);

  //potentiometer 3 - Prop
  currentOutputLevel = getAverageOutput(potentiometerPin3);
  zAxis_ = map(currentOutputLevel, 0, 1023, 0, 1023);
  Joystick.setZAxis(zAxis_);

  //potentiometer 4 - Left Toe Brake
  currentOutputLevel = getAverageOutput(potentiometerPin4);
  RxAxis_ = map(currentOutputLevel, 0, 1023, 0, 1023);
  Joystick.setRxAxis(RxAxis_);

  //potentiometer 5 - Right Tow Brake
  currentOutputLevel = getAverageOutput(potentiometerPin5);
  RyAxis_ = map(currentOutputLevel, 0, 1023, 0, 1023);
  Joystick.setRyAxis(RyAxis_);

  //potentiometer 6 - Rudder
  currentOutputLevel = getAverageOutput(potentiometerPin6);
  RzAxis_ = map(currentOutputLevel, 0, 1023, 0, 1023);
  Joystick.setRzAxis(RzAxis_);

  Serial.println("Version 2.1");
  Serial.print("Throttle: ");
  Serial.print(xAxis_);
  Serial.print("\nProp: ");
  Serial.print(yAxis_);
  Serial.print("\nMixture: ");
  Serial.print(zAxis_);
  Serial.print("\nLeft Toe Brake: ");
  Serial.print(RxAxis_);
  Serial.print("\nRight Toe Brake: ");
  Serial.print(RyAxis_);
  Serial.print("\nRudder: ");
  Serial.print(RzAxis_);
  Serial.println("");
  if ( MaxRudder < RzAxis_ ) {
    MaxRudder = RzAxis_;
    Serial.print("MaxRudder: ");
    Serial.print(MaxRudder);
  }
  if ( MinRudder > RzAxis_ ) {
    MinRudder = RzAxis_;
    Serial.print("MinRudder: ");
    Serial.print(MinRudder);
  }
  if ( MaxRTBrake < RyAxis_ ) {
    MaxRTBrake = RyAxis_;
    Serial.print("MaxRTBrake: ");
    Serial.print(MaxRTBrake);
  }
  if ( MinRTBrake > RyAxis_ ) {
    MinRTBrake = RyAxis_;
    Serial.print("MinRTBrake: ");
    Serial.print(MinRTBrake);
  }
  if ( MaxLTBrake < RxAxis_ ) {
    MaxLTBrake = RxAxis_;
    Serial.print("MaxLTBrake: ");
    Serial.print(MaxLTBrake);
  }
  if ( MinLTBrake > RxAxis_ ) {
    MinLTBrake = RxAxis_;
    Serial.print("MinLTBrake: ");
    Serial.print(MinLTBrake);
  }
}

int getAverageOutput(int pinToRead) {
  index = 0;
  total = 0;

  while (index < numReadings) {
    readings[index] = analogRead(pinToRead);
    total = total + readings[index];
    index = index + 1;
    //delay (1);
  }
  return total / numReadings;
}


void CheckAllButtons(void) {
  if (buttbx.getKeys())
  {
    for (int i = 0; i < LIST_MAX; i++)
    {
      if ( buttbx.key[i].stateChanged )
      {
        switch (buttbx.key[i].kstate) {
          case PRESSED:
          case HOLD:
            Joystick.setButton(buttbx.key[i].kchar, 1);
            break;
          case RELEASED:
          case IDLE:
            Joystick.setButton(buttbx.key[i].kchar, 0);
            break;
        }
      }
    }
  }
}


void rotary_init() {
  for (int i = 0; i < NUMROTARIES; i++) {
    pinMode(rotaries[i].pin1, INPUT);
    pinMode(rotaries[i].pin2, INPUT);
#ifdef ENABLE_PULLUPS
    digitalWrite(rotaries[i].pin1, HIGH);
    digitalWrite(rotaries[i].pin2, HIGH);
#endif
  }
}


unsigned char rotary_process(int _i) {
  //Serial.print("Processing rotary: ");
  //Serial.println(_i);
  unsigned char pinstate = (digitalRead(rotaries[_i].pin2) << 1) | digitalRead(rotaries[_i].pin1);
  rotaries[_i].state = ttable[rotaries[_i].state & 0xf][pinstate];
  return (rotaries[_i].state & 0x30);
}

void CheckAllEncoders(void) {
  Serial.println("Checking rotaries");
  for (int i = 0; i < NUMROTARIES; i++) {
    unsigned char result = rotary_process(i);
    if (result == DIR_CCW) {
      Serial.print("Rotary ");
      Serial.print(i);
      Serial.println(" <<< Going CCW");
      Joystick.setButton(rotaries[i].ccwchar, 1); delay(50); Joystick.setButton(rotaries[i].ccwchar, 0);
    };
    if (result == DIR_CW) {
      Serial.print("Rotary ");
      Serial.print(i);
      Serial.println(" >>> Going CW");
      Joystick.setButton(rotaries[i].cwchar, 1); delay(50); Joystick.setButton(rotaries[i].cwchar, 0);
    };
  }
  Serial.println("Done checking");
}
