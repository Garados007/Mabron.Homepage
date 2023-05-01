+++
title = "Idee für einen funktionierenden Dragonballradar"
date = 2023-05-01T11:00:00
weight=10
[taxonomies]
tags=["blog","project","cosplay","dragonball"]
authors=["Max Brauer"]
+++

# Idee für einen funktionierenden Dragonballradar

Ich hatte vor vielen Jahren, wahrscheinlich zur letzten Manga-Comic-Con im Jahre 2019 (vor Corona),
eine Idee für einen funktionierenden Dragonballradar, welcher als Requisite auf der Messe verwendet
werden kann. Leider habe ich die Idee zwischenzeitlich wieder vergessen, bis sie mir dieses Jahr zur
ersten Manga-Comic-Con nach Corona wieder eingefallen ist.

Ich habe richtig Lust dieses Projekt durchzuführen, mir das nötige Wissen dafür anzueignen und den
Schaffungsprozess hier zu dokumentieren. Momentan werde ich erst einmal die Ideen dazu aufschreiben
und frühestens im Sommer, wenn die Vorlesungen vorbei sind, mit den Recherchen und der Umsetzung
anfangen.

<!-- more -->

## Was ist ein Dragonballradar?

Das ist ein Gegenstand aus der Serie Dragonball. Sehr vereinfacht geht es in dieser Serie um 7
kleine Kugeln, den Dragonballs, dessen Ziel es ist gefunden zu werden, damit man beim Zusammenführen
einen Wunsch frei hat. Dies gestaltet sich alles andere als einfach, wenn man keine Ahnung hat, wo
man suchen soll. Von daher hat der Charakter Bulma einen Dragonballradar erfunden.

Dieser sieht aus wie eine überdimensionierte Taschenuhr mit einem Display als Ziffernblatt. Auf
diesem werden Punkte in relativer Ausrichtung und Distanz zum aktuellen Betrachter dargestellt,
welche den Dragonballs entsprechen. In der Serie sind nicht immer alle Dragonballs gleichzeitig
dargestellt, weshalb man davon ausgehen kann, dass weit entfernte Dragonballs nicht angezeigt werden
(dies kann ich als Vereinfachung für das Projekt nutzen).

## Was soll der Dragonballradar können?

Hier definiere ich mir ein paar Ziele, auf die ich später zurückkommen kann. Jede der Kategorien
bekommt einen Präfix, damit die Ziele leichter zu nennen sind. So ist `R1` die Kurzform von `Regel 1`.

### Minimale Ziele (M)

1. Der Radar soll weitestgehend wie aus der Serie aussehen.
2. Der Radar soll "Dragonballs" detektieren.
3. Die "Dragonballs" werden in relativer Position zum Radar auf dem Display dargestellt.
    1. Dazu zählt der Abstand
    2. und die Ausrichtung.
4. Der Radar kann bis zu 7 "Dragonballs" gleichzeitig detektieren.

### Regeln (R)

1. Die aktuellen Vorschriften und Gesetze für Funkübertragungen und Elektrotechnik in Deutschland
   müssen eingehalten werden.
2. Der Radar muss die Richtlinien der Messe einhalten und darf nicht als gefährlich eingestuft
   werden.

### Wunschziele (W)

1. Reichweite: Der Radar muss Dragonballs, welche sich in der gleichen Messehalle befinden
   detektieren können.
2. Die Radartechnik muss so kompakt sein, dass diese komplett in das Gehäuse des Radars passt.
3. Die Sendetechnik muss so kompakt sein, dass diese in Plastikkugeln passt, die dann als
   Dragonballs genutzt werden.

### Nicht-Ziele (N)

1. Exakte Positionsbestimmung oder Anzeige der exakten Koordinaten auf dem Display. Aus folgenden
   Gründen:
   - Signal kann "flackern" und dadurch springt der Punkt auf dem Display hin und her.
   - Um Strom zu sparen braucht man nicht ständig ein Signal senden. Aller paar Sekunden reicht.
   - Das Display in der Serie hatte keine genaue Auflösung.

## Ideen zur Umsetzung

Ich habe hierzu einige Ideen, die ich nur lose zu den Themenschwerpunkten zusammengefasst habe. Wie
gesagt, das sind nur Ideen. Die genauen Recherchen und Analysen müssen noch folgen. Es kann sich
auch herausstellen, dass einzelne Ideen so nicht funktionieren und durch bessere ersetzt werden
müssen. Es kann sich sogar sein, dass am Ende die komplette Idee verworfen wird, wenn sie von mir
als nicht umsetzbar betrachtet wird.

### Positionsbestimmung

#### 3 Antennen

Meine erste Idee war, dass man 3 Antennen in den Radar verbaut, damit man den Zeitabstand des
Empfangs der Datenpakete zur Triangulation nutzen kann. Dazu müssen aber gleichzeitig folgende
Bedingungen erfüllt werden:

1. Die Uhren in den Sendern und dem Radar müssen möglichst genau funktionieren und aufeinander
   abgestimmt sein (Abstimmung geht zur Not auch in Software).
2. Die Signale müssen auf allen Antenne möglichst genau aufgenommen und mit Zeitstempel versehen
   werden können.

#### GPS

Jeder Dragonball und der Radar macht eine GPS Standort Ortung und übermittelt nur diese Koordinaten
als Datenpaket weiter. Das größte Problem hierbei ist, wie genau eine GPS Standortermittlung in
einer Messehalle funktioniert.

#### WiFi-Access Points

In der Halle sind dutzende Access-Points (AP) für WLAN verbaut. Die Dragonballs können alle eine
Liste der APs mit der Signalstärke an den Radar übermitteln. Problem hierbei ist, dass diese AP
anfangs irgendwie kartografiert werden müssen, damit der Radar weiß, wo sich welcher AP befindet.
Großer Vorteil an dieser Lösung ist, dass danach eine Ortung sehr genau sein kann.

### Datenübertragung

#### WLAN

Es ist eher schwierig alle Geräte in das WLAN-Netz der Messe einzuklinken, da es ein extra Portal
gibt, bei denen man die AGBs akzeptieren muss. Dies für jeden einzelnen Ball zu machen ist
unpraktisch. Genauso unpraktisch ist es eigene WLAN Netzwerke aufzusetzen, da WLAN nur eine
bestimmte Reichweite hat und ich mir ungern einen starken WLAN-Sender auf den Rücken binde.

#### Bluetooth

In den letzten Jahren hat sich bei Bluetooth einiges getan, wodurch es auch für Bluetooth Beacons
und Low Energy Devices verwendet werden kann. Das sind jetzt erst einmal nur Begriffe, ohne dass ich
deren Zweck genauer recherchiert habe. Zumindest hat sich bei der Einführung der Corona Warn App
gezeigt, dass man Bluetooth sehr gut nutzen kann, um kleine Datenpakete ohne Probleme über große
Distanzen zu verschicken.

Problem hierbei ist aber, dass Bluetooth nur eine relativ kleine Reichweite hat und man
wahrscheinlich nicht eine komplette Halle abdecken kann.

#### Radiowellen

Es gibt noch viele weitere Funkstandards, die auch für private Zwecke und Amateurfunk genutzt werden
können. Ich fasse das jetzt mal als Radiowellen zusammen, da mein Wissen darüber bisher sehr
begrenzt ist.

Ich weiß aber von Radiowellen, insbesondere von Langwellen, dass diese gut große Distanzen abdecken
können und auch von Oberflächen reflektiert werden. Dies könnte sich gut eignen, um eine komplette
Halle abzudecken. Aber auch hier muss noch einmal geschaut werden, dass sich die Sendeleistung im
legalen und gesundheitlich unbedenklichen Rahmen befindet.

#### Handynetz

Sobald jeder Dragonball und der Radar mit einer SIM-Karte versehen ist, können diese über das
Handynetz Daten austauschen. Die Erfahrung diesen Jahres war, dass alle Hallen eine gute
Netzabdeckung hatten und meistens LTE ohne Probleme funktionierte. Nur als sich sehr viele Menschen
auf einen Haufen versammelt hatten (z.B. bei der Bühnenshow) gab es keinen Kontakt zum Internet
mehr, aber SMSs gingen immer noch durch.

Vorteil hierbei ist, dass die Technik relativ klein und erprobt ist und nicht sehr viel Strom
braucht. Außerdem kann man alle Hallen auf einmal abdecken. Problematisch ist aber nur, dass man bis
zu 8 SIM-Karten braucht, welche wiederrum Geld kosten.

### Umsetzung

#### Standalone-Hardware in Radar und Bällen

Hierzu befindet sich die Technik komplett im Radar bzw. in den Bällen. Eventuell gibt es noch
Zusatzgeräte, welche im Rucksack versteckt werden und über Kabel oder Funk mit Radar bzw. Ball
verbunden sind. Vorteil ist hier, dass man ein eigenständiges System hat und natürlich viel cooler
ist. Nachteil ist aber auch, dass es sehr schnell sehr komplex und teuer werden kann.

#### Handy-App

Man kann das Ganze als Handy-App umsetzen, die bei jedem Teilnehmer auf dem Handy läuft. Dazu ist
dann keine teure Hardware mehr nötig und die Dragonballs sind dann nur noch Attrappen. Der Radar ist
dann nur noch ein einfaches Display, welches die Daten (z.B. per Bluetooth) vom Handy übertragen
bekommt.

## Zeitplan

Wie oben gesagt, kann ich frühestens im Sommer mit den Recherchen dazu anfangen. Ich werde mir
einige Punkte genauer ansehen und die Praktikabilität herausfinden. Danach geht es an die Planung,
Umsetzung und Tests. Bis Ende März 2024 möchte ich das Projekt abgeschlossen haben.
