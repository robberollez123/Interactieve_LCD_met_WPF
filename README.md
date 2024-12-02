# Project ICT Rolllez Robbe 2024-25
Dit project maakt gebruik van Visual Studio WPF en C# om diverse functionaliteiten weer te geven op een 16x2 LCD, aangestuurd door een Arduino Uno.
## Visual Studio C#
## Arduino Uno
De Arduino Uno wordt in dit project alleen gebruikt om data in te lezen via de seriële poort om de 16x2 LCD aan te sturen.
### Seriële data versturen om de Arduino aan te sturen
In dit stukje staan de verschillende karakters die naar de Arduino worden verzonden vanuit de WPF en wat ze precies doen.
#### 'A'
=> 'Binaire teller' op LCD printen.
#### 'B'
=> 'Rekenmachine' op LCD printen.
#### 'C'
=> 'HEX/BIN/DEC Omzetter' op LCD printen.
## Doos
### Betekenis LEDs
#### Knipperende groene LED
Als de groene LED knippert wil dit zeggen dat het WPF programma wacht op de connectie met Arduino via de seriële poort. Je kan connectie maken door een COM-poort te selecteren en op 'CONNECT' te klikken.
#### Blauwe LED
Als de blauwe LED brandt dan is de connectie met Arduino gelukt.
#### Rode LED
Als de rode LED brandt wil dit zeggen dat er een onbestaand commando is verstuurd via de seriële poort, dit is een fout in de software.

