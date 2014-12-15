# CAO 2 FPGA opdracht: MorseKnopper
## Frank Wibbelink (s1184725) & Sander Bakkum (s1346970)

Het door ons gerealiseerde project is een programma voor een FPGA wat het aantal keer indrukken van 
een knop decimaal telt op twee 7-segment displays. Tevens wordt bij het indrukken van de knop het
getal ook in morse afgespeeld over de speaker-uitgang van bord.

Van alle componenten in ons programma zal hieronder een uitleg worden gegeven wat deze doen. Daarna
wordt duidelijk gemaakt hoe deze componenten samenkomen tot een geheel.

## Componenten

### Puls

`Puls` is een van de simpelste componenten van het programma. Wat dit component doet is een
(ongesynchroniseerd) signaal één klokcyclus hoog zetten. Puls kan dus gebruikt worden om de uitvoer
van een knop die lang ingedrukt wordt te vertalen naar een eenmalige korte puls.

### Modcounter

`Modcounter` is een simpel component dat telt hoe vaak er een opgaande flank op de invoer heeft
gestaan. Het mod-gedeelte in de naam komt van het feit dat aangegeven kan worden tot hoe hoog het 
component telt en dat deze weer terug springt naar 0. De counter kan gereset worden d.m.v. de 
reset-invoer. De overflow-uitvoer wordt hoog op het moment dat de counter hoger dan zijn
maximale waarde telt.

### Display

`Display` is een component dat een numerieke waarde van maximaal 15 kan uitvoeren in hexadecimaal naar 
een 7-segment display. In ons project worden slechts de eerste 10 waardes gebruikt, dus zullen er
nooit letters op de displays verschijnen.

### Audio interface

De `audio_interface` is een component wat direct is overgenomen van de voorbeeldcode voor het afspelen
van een 1khz sinus. 

### Toongenerator

De `toongenerator` is ook bijna direct overgenomen van de voorbeeldcode voor het afspelen van een 1khz
sinus, hieraan is een ingang toegevoegd die aangeeft of deze wel of niet moet afspelen (activate).
Zolang deze invoer hoog is zal er een toon klinken.

### Morsegenerator

De `morsegenerator` begint aan de hand van een invoer (`start`) een sequentie van morse-tonen te spelen 
afhankelijk van het huidige ingangsgetal. Als deze klaar is met spelen wordt er een uitgangssignaal
hoog gemaakt.

## Aansluiting

Alle componenten worden aangemaakt in `morseknopper` en worden daar ook aan elkaar verbonden door
middel van portmaps.

Hoe de componenten op elkaar zijn aangesloten is weergeven in de onderstaande afbeelding.

[![Schematic overview](./overview_thumb.png)](./overview.png)

(klik om groter te maken)