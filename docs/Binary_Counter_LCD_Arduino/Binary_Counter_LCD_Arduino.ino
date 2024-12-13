#include <LiquidCrystal.h>

// Initialiseer het LCD-scherm: RS, EN, D4, D5, D6, D7
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);
uint8_t connectionLed = 8, waitForConnectionLed = 9, errorLed = 10;
uint8_t resetDelay = 100;
bool waitConnection = true;
int contrast = 100;

String receivedText = "";  // String to store incoming text

unsigned long previousMillis = 0; // To store the last time the LED was updated
int blinkState = 0; // State for the LED blinking pattern

void setup() {
  analogWrite(6, contrast);
  pinMode(connectionLed, OUTPUT);
  pinMode(waitForConnectionLed, OUTPUT);
  pinMode(errorLed, OUTPUT);
  lcd.begin(16, 2);     // Zet het LCD-scherm op 16 kolommen en 2 rijen
  Serial.begin(9600);   // Start de seriële communicatie
  lcd.setCursor(0, 0);
  Startup();
}

void loop() {
  // Controleer of er gegevens beschikbaar zijn op de seriële poort
  if (Serial.available() > 0) {
    if (errorLed == HIGH) {
      digitalWrite(errorLed, LOW);
    }
    char command = Serial.read(); // Read a single character from the serial buffer

    if (command == 'Z') {
      lcd.clear();
      lcd.print("Verbinden...");
    } else if (command == 'M') {
      lcd.clear();
      lcd.print("Verbonden");
      digitalWrite(connectionLed, HIGH);
      delay(1000);
      waitConnection = false;
      lcd.clear();
      lcd.print("Wachten op mode");
      lcd.setCursor(0, 1);
      lcd.print("selectie...");
    }
    // Handle different commands for modes
    else if (command == 'B') { // Toon binaire teller
      lcd.clear();
      lcd.print("Binaire teller");
    } else if (command == 'C') { // Toon rekenmachine
      lcd.clear();
      lcd.print("Rekenmachine");
    } else if (command == 'O') { // Toon omzetter
      lcd.clear();
      lcd.print("HEX/BIN/DEC");
      lcd.setCursor(0, 1);
      lcd.print("Omzetter");
    } else if (command == 'S') {  // Start Binaire teller
      BinaireTeller();
    } else if (command == 'E') {  // Start Rekenmachine
      Rekenmachine();
    } else if (command == 'P') {  // Pauze
      // Handle pause command
      // Do nothing, just pause the counter
    } else if (command == 'I') { // Instellen van contrast
      lcd.clear();
      lcd.setCursor(0,0);
      lcd.print("Instellingen");
      SetContrast();
    } else if (command == 'X') { // Verbreken van connectie
      digitalWrite(connectionLed, LOW);
      digitalWrite(waitForConnectionLed, LOW);
      digitalWrite(errorLed, LOW);
      waitConnection = true;
      lcd.clear();
      lcd.print("Wachten op");
      lcd.setCursor(0, 1);
      lcd.print("connectie...");
    } else if (command == 'R') {
      lcd.clear();
      lcd.setCursor(0, 0);
      lcd.print("LCD Cleared");
      delay(1000);
      lcd.clear();
      digitalWrite(waitForConnectionLed, HIGH);
      delay(resetDelay);
      digitalWrite(waitForConnectionLed, LOW);
      delay(resetDelay);
      digitalWrite(waitForConnectionLed, HIGH);
      delay(resetDelay);
      digitalWrite(waitForConnectionLed, LOW);
      delay(resetDelay);
    } else if(command == '0'){
      lcd.clear();
      lcd.setCursor(0,0);
      lcd.print("Instellingen");
      lcd.setCursor(0,1);
      lcd.print("Testen leds...");
      TestLeds();
    }
    else {
      // Handle invalid commands
      lcd.clear();
      lcd.print("Ongeldige cmd");
      digitalWrite(errorLed, HIGH);
      digitalWrite(connectionLed, LOW);
      digitalWrite(waitForConnectionLed, LOW);
    }
  }

  // Blink waitForConnectionLed in the specified pattern while waiting for connection
  if (waitConnection) {
    unsigned long currentMillis = millis();

    switch (blinkState) {
      case 0: // LED ON for the first blink
        digitalWrite(waitForConnectionLed, HIGH);
        previousMillis = currentMillis;
        blinkState = 1;
        break;
      case 1: // Wait for 100ms
        if (currentMillis - previousMillis >= 100) {
          digitalWrite(waitForConnectionLed, LOW);
          previousMillis = currentMillis;
          blinkState = 2;
        }
        break;
      case 2: // LED ON for the second blink
        if (currentMillis - previousMillis >= 100) {
          digitalWrite(waitForConnectionLed, HIGH);
          previousMillis = currentMillis;
          blinkState = 3;
        }
        break;
      case 3: // Wait for 100ms
        if (currentMillis - previousMillis >= 100) {
          digitalWrite(waitForConnectionLed, LOW);
          previousMillis = currentMillis;
          blinkState = 4;
        }
        break;
      case 4: // Wait for 1500ms before repeating the pattern
        if (currentMillis - previousMillis >= 1500) {
          blinkState = 0; // Reset to the beginning of the pattern
        }
        break;
    }
  } else {
    digitalWrite(waitForConnectionLed, LOW); // Ensure LED is off when not waiting
  }
}

void TestLeds(){
  digitalWrite(connectionLed, LOW);
  digitalWrite(waitForConnectionLed, LOW);
  digitalWrite(errorLed, LOW);
  delay(1000);

  digitalWrite(connectionLed, HIGH);
  delay(400);
  digitalWrite(connectionLed, LOW);
  delay(100);
  digitalWrite(waitForConnectionLed, HIGH);
  delay(400);
  digitalWrite(waitForConnectionLed, LOW);
  delay(100);
  digitalWrite(errorLed, HIGH);
  delay(400);
  digitalWrite(errorLed, LOW);
  delay(100);
  digitalWrite(connectionLed, HIGH);
  delay(400);
  digitalWrite(connectionLed, LOW);
  delay(100);
  digitalWrite(waitForConnectionLed, HIGH);
  delay(400);
  digitalWrite(waitForConnectionLed, LOW);
  delay(100);
  digitalWrite(errorLed, HIGH);
  delay(400);
  digitalWrite(errorLed, LOW);
  delay(100);

  lcd.clear();
  digitalWrite(connectionLed, HIGH);
}

void BinaireTeller() {
  // Handle Binary Counter mode
  String binaryString = Serial.readStringUntil('\n'); // Read the binary string until newline
  binaryString.trim();  // Trim any unwanted white spaces or characters from the binary string
  int decimalValue = strtol(binaryString.c_str(), NULL, 2); // Convert binary to decimal

  lcd.setCursor(0, 1);  // Set cursor to the second row
  lcd.print("                ");  // Clear the entire second row
  lcd.setCursor(0, 1);  // Reset cursor to the beginning of the second row
  lcd.print(binaryString);  // Print the binary string
  lcd.setCursor(13, 1);  // Set cursor for decimal value
  lcd.print(decimalValue);  // Print the decimal value
}

void Rekenmachine() {
  // Handle Calculator mode
  String formula = Serial.readStringUntil('\n'); // Read the formula
  String result = Serial.readStringUntil('\n');  // Read the result

  // Update the LCD with formula and result
  lcd.clear();  // Clear the display before showing new information
  lcd.setCursor(0, 0);  // Set cursor to first row
  lcd.print(formula);  // Display the formula on the first line

  lcd.setCursor(0, 1);  // Set cursor to the second row
  lcd.print(result);    // Display the result on the second line
}

void SetContrast() {
  String contrastValue = Serial.readStringUntil('\n');
  int newContrast = contrastValue.toInt();

  lcd.setCursor(0, 1);
  lcd.print("Contrast: " + contrastValue);

  analogWrite(6, newContrast);
}

void Startup(){
  lcd.print("Opstarten...");
  delay(2000);
  lcd.clear();
  lcd.print("Opgestart");
  delay(1000);
  lcd.clear();
  lcd.print("Wachten op");
  lcd.setCursor(0,1);
  lcd.print("connectie...");
}
