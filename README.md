# Project ICT Rolllez Robbe 2024-25

Welkom bij het **Project ICT Rolllez Robbe**! Dit project maakt gebruik van **Visual Studio WPF** en **C#** om diverse functionaliteiten te demonstreren op een 16x2 LCD-scherm, aangestuurd door een **Arduino Uno**.

## Overzicht van het project
Het doel van dit project is om via een Windows Presentation Foundation (WPF)-toepassing de communicatie en besturing van een 16x2 LCD-scherm te beheren. De Arduino Uno fungeert als interface en ontvangt data via de seriële poort.

### Technologieën gebruikt
- **Visual Studio C#:** Voor de ontwikkeling van de WPF-toepassing.
- **Arduino Uno:** Voor de aansturing van het LCD-scherm en verwerking van seriële data.

## Functionaliteiten

### Seriële communicatie
De WPF-toepassing communiceert met de Arduino Uno door specifieke karakters via de seriële poort te verzenden. Elk karakter activeert een bepaalde functionaliteit op het 16x2 LCD-scherm:

- **0:** De connectie met de seriële poort verbreken.
- **'A':** Toont de tekst "Binaire teller".
- **'B':** Toont de tekst "Rekenmachine".
- **'C':** Toont de tekst "HEX/BIN/DEC Omzetter".
- **'S':** Start de binaire teller.
- **'P':** De binaire teller op pauze zetten. 
- **'D':** Het resultaat van de rekenmachine uitrekenen.
- **'M':** Instellen van het contrast voor de LCD via instellingen.
- **'X':** De LCD resetten en de groene LED 2x laten knipperen.

### Doos en LED-indicatoren
De fysieke behuizing van het project bevat drie LED's die de status van de applicatie aangeven:

- **Groene LED (knipperend):**
  - Geeft aan dat de WPF-toepassing wacht op een verbinding met de Arduino via de seriële poort.
  - Maak verbinding door een COM-poort te selecteren en op **"CONNECT"** te klikken.

- **Blauwe LED:**
  - Brandt wanneer de verbinding met de Arduino succesvol tot stand is gebracht.

- **Rode LED:**
  - Brandt wanneer een onbekend of onjuist commando is verzonden via de seriële poort. Dit wijst op een fout in de software.

## Hoe gebruik je dit project?
1. **Installeer benodigdheden:** Zorg ervoor dat je Visual Studio en de Arduino IDE hebt geïnstalleerd.
2. **Compileer en upload:**
   - Compileer de WPF-toepassing in Visual Studio.
   - Upload de bijbehorende Arduino-code naar de Arduino Uno via de Arduino IDE.
3. **Start de applicatie:**
   - Open de WPF-toepassing en selecteer de juiste COM-poort.
   - Klik op **"CONNECT"** om verbinding te maken.

