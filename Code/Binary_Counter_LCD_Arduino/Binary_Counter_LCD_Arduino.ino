#include <LiquidCrystal.h>

// Initialiseer het LCD-scherm: RS, EN, D4, D5, D6, D7
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);
int contrast= 100;

String receivedText = "";  // String to store incoming text

void setup() {
  analogWrite(6, contrast);
  lcd.begin(16, 2);     // Zet het LCD-scherm op 16 kolommen en 2 rijen
  Serial.begin(9600);   // Start de seriële communicatie
  lcd.setCursor(0,0);
  lcd.print("Waiting for");
  lcd.setCursor(0,1);
  lcd.print("connection...");
}

void loop() {
  // Controleer of er gegevens beschikbaar zijn op de seriële poort
  if (Serial.available() > 0) {
    char command = Serial.read(); // Read a single character from the serial buffer

    if(command == 'Z'){
      lcd.clear();
      lcd.print("Connecting...");
      delay(2000);
    }
    else if(command == 'R') {
      lcd.clear();
      lcd.print("Connected");
      delay(1000);
      lcd.clear();
      lcd.print("Waiting for mode");
      lcd.setCursor(0,1);
      lcd.print("selection...");
    }
    // Handle different commands for modes
    else if (command == 'A') {
      lcd.clear();
      lcd.print("Binary Counter");
    } 
    else if (command == 'B') {
      lcd.clear();
      lcd.print("Calculator");
    } 
    else if (command == 'C') {
      lcd.clear();
      lcd.print("Converter");
    } 
    else if (command == 'S') {
      BinaireTeller();
    }
    else if (command == 'D') {
      Rekenmachine();
    }
    else if (command == 'P') {
      // Handle pause command
      // Do nothing, just pause the counter
    }
    else if(command == 'M'){
      SetContrast();
    }
    else if(command == '0'){
      lcd.clear();
      lcd.print("Waiting for");
      lcd.setCursor(0,1);
      lcd.print("connection...");
    }
    else if(command == '-1') {
      lcd.clear();
      lcd.setCursor(0,0);
    }
    else {
      // Handle invalid commands
      lcd.clear();
      lcd.print("Waiting for mode");
      lcd.setCursor(0,1);
      lcd.print("connection...");
    }
  }
}

void BinaireTeller()
{
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

void SetContrast(){
  String contrastValue = Serial.readStringUntil('\n');
  int newContrast = contrastValue.toInt();
  analogWrite(6, newContrast);
}
