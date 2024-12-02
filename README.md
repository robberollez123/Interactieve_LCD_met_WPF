# Project ICT Rolllez Robbe 2024-25

Dit project maakt gebruik van Visual Studio WPF en C# om diverse functionaliteiten weer te geven op een 16x2 LCD-scherm, aangestuurd door een Arduino Uno.

## Visual Studio C#

Het WPF-project in Visual Studio wordt gebruikt om data naar de Arduino Uno te sturen via de seriële poort. De data wordt vervolgens gebruikt om het 16x2 LCD-scherm aan te sturen en verschillende functionaliteiten weer te geven.

## Arduino Uno

De Arduino Uno wordt in dit project voornamelijk gebruikt om gegevens te ontvangen via de seriële poort en deze te verwerken om de 16x2 LCD aan te sturen.

### Seriële data versturen om de Arduino aan te sturen

De volgende karakters worden vanuit de WPF-applicatie naar de Arduino verstuurd. Elk karakter heeft een specifieke functie op het LCD-scherm:

#### 'A'
- **Functie**: Zet een binaire teller op het LCD-scherm.

#### 'B'
- **Functie**: Zet een rekenmachine op het LCD-scherm.

#### 'C'
- **Functie**: Zet een omzetter voor HEX, BIN en DEC op het LCD-scherm.

## Doos

### Betekenis van de LED-indicatoren

De doos bevat drie LED's die de status van de verbinding en foutmeldingen aangeven:

#### Knipperende groene LED
- **Betekenis**: De WPF-applicatie wacht op een verbinding met de Arduino via de seriële poort. Verbind de Arduino door een COM-poort te selecteren en op 'CONNECT' te klikken.

#### Blauwe LED
- **Betekenis**: De verbinding met de Arduino is succesvol tot stand gebracht.

#### Rode LED
- **Betekenis**: Er is een ongeldige of onbekende commando gestuurd via de seriële poort. Dit wijst op een fout in de software.

