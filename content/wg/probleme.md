+++
title = "Netzwerkprobleme"
weight = 20
date = 2020-01-16T23:01:41Z
[taxonomies]
tags=["wg", "ip"]
+++

Folgende Themen sind bekannt und haben eine Lösung:

## Verbindung mit WLAN Netzwerk nicht möglich

Wenn eine Verbindung mit dem WLAN Netz nicht hergestellt werden kann, dann kann es an vielen Dingen liegen.

### Permanente Anzeige von "IP Adresse wird abgerufen"

Hier ist der DHCP Server aktuell nicht erreichbar. Bitte reserviert eine [feste IP Adresse](ip.md) oder starten den DHCP Server neu.

Den DHCP Server startet man so neu:

1. Den Raspberry PI unter dem Fernseher vom Strom trennen
2. Eine halbe Minute warten
3. Den Raspberry PI wieder mit dem Strom verbinden
4. 2 Minuten warten
5. Alles sollte wieder funktionieren

### Ich fliege immer wieder aus dem Netz raus

Wenn die Verbindung immer wieder unterbrochen wird, dann sind die Router dran schuld. Einfach zu den Router in der Nähe gehen, vom Strom trennen, kurz warten und wieder verbinden.

## Internetseite nicht aufrufbar

Man ist mit dem WLAN Netz verbunden und es gibt soweit keine Probleme, aber trotzdem kann man keine Webseite aufrufen. Dazu kommen folgende Fehlerquellen in Frage:

### falsche lokale IP

Unter Umständen kann es passieren, dass das eigene Gerät keine IP Adresse zugewiesen bekommt und sich selbst eine IP Adresse zuweist. Diese Adressen sind zu 99% inkompatibel mit unserem Netzwerk - von daher gibt es kein Internet.

Dazu schaut man nach, welche lokale IP Adresse man zugewiesen bekommen hatte. Dies geht in den Einstellungen des Gerät und dann unter Informationen. Bei Windows kann man Windows-Taste und R gleichzeitig drücken, dann `cmd` eingeben und danach `ipconfig`. Bei Linux und Mac öffnet man die Konsole und gibt da `ifconfig` ein. Bei Android und iOS schaut man in den Einstellungen.

Ist der Anfang der lokalen IP Adresse nicht `192.168.0`, so hat man selbst eine falsche IP Adresse bekommen. Um das zu beheben gibt es folgende Möglichkeiten:

- sich selbst eine feste IP Adresse zuweisen (siehe [hier](ip.md))
- DCHP neustarten (siehe oben)

### Keine Internetverbindung an sich verfügbar

Unter gewissen Umständen (z.B. schlechtem Wetter, Netz überlastet) kann unser LTE-Router keine Verbindung zum Internet herstellen. Dazu einfach abwarten, bis es besser wird.

Andernfalls kann es auch sein, dass sich der Hauptrouter eingefroren hat. Das kommt vor. Leider tut die Telecom so, als würde dieses Problem mit ihren Routern nicht existieren, weshalb uns keine andere Möglichkeit bleibt, als diesen neuzustarten. Dazu diesen einfach vom Strom trennen, halbe Minute warten, wieder verbinden und 5 Minuten warten (der Router braucht lange, um wieder hochzufahren).

### DNS funktioniert nicht

Dieser Fehler ist selten, zumal in jedem Gerät noch ein Ersatzserver eingetragen wird, welcher genutzt wird, wenn der Haupt-DNS-Server nicht funktioniert. Falls es wirklich daran liegen sollte, kann man es wie folgt herausfinden:

Man öffnet am Computer (Windows, Linux, Mac) die Konsole (unter Windows mit Windows + R und dann `cmd`) und gibt dann folgenden Befehl ein:

```
ping 192.168.0.11
```

Sollte die Verbindung fehlschlagen, so hat sich der Raspberry PI aufgehangen. Sicherheitshalber sollte man noch die `192.168.0.1` anpingen (dies ist der Haupt-Telecom-Router), da dieser sich immer zwischen dir und dem Raspberry befindet. Falls auch der Hauptrouter nicht funktioniert, so einfach diesen neustarten, ansonsten den Raspberry.

## Schwaches WLAN-Signal

In unserer Wohnung befinden sich genügend Router, um die gesammte Wohnung mit WLAN zu versorgen. Doch leider können folgende Sachen dafür sorgen, dass du trotzdem schwaches WLAN-Signal hast:

### Nachbarn stören unser Netz

In unserer Umgebung befinden sich mindestens 10 andere WLAN Netze, welche auch bei uns zu empfangen sind. Normalerweise sollte jeder seine Signalstärke auf den Mindestwert stellen, damit man selbst noch guten Empfang hat, aber man die Nachbarn nicht so sehr stört. Doch wer macht das? Die meisten Router sind auf maximale Sendeleistung eingestellt, weshalb sich alle Router sich maximal gegenseitig stören.

Ich hatte selbst mit der Signalstärke experimentiert, konnte aber leider nur mäßige Erfolge erziehlen, da die Nachbarn zu stark stören.

Hier lässt sich leider nichts machen.

### Man hat sich durch die Wohnung bewegt

Die Geräte versuchen sich immer mit den Router zu verbinden, welches aktuell die beste Signalstärke hat. Haben sie sich mit einem verbunden, so versuchen sie leider die Verbindung für eine maximale Zeit zu halten, auch wenn jetzt andere Router näher sind.

Nach einer gewissen Zeit bekommen es die Geräte trotzdem mit und wechseln den Router. Hier hilft leider nur ein paar Minuten warten oder kurz WLAN aus und wieder an am Handy oder Laptop zu machen.

Man soll beim WLAN auch (aus der Sicht des Administrators) einstellen können, dass die Geräte schneller zum nächsten Router wechseln, doch leider nutzen wir total verschiedene billige WLAN Router, welche nicht auf diesen Fall vorbereitet sind. Solche Optionen kann ich leider nicht einstellen. Von daher hilft leider nur warten und hoffen.

### Der nächste Router ist aus

Einfach mal zum nächsten Router laufen und schauen ob man sich verbinden kann. Dazu WLAN kurz ausschalten und dann wieder an. Unter Umständen kann es sein, dass der Router sich aufgehangen hat, dann einfach diesen Router neustarten.

## LAN Netzwerk

Man mag zwar denken, dass die LAN Kabel eine veraltete Technologie ist, aber dem ist nicht so. WLAN war nie dazu entwickelt wurden LAN zu ersetzen, sondern zu ergänzen. Wenn man einen Laptop oder Computer hat, so kann man gern bei uns auf das gute LAN Kabel zurückgreifen. Dies hat den großen Teil der Macken des WLANs nicht, kann nicht so leicht gestört werden und ist schneller und stabiler.

Dazu haben wir im großen Teil der Wohnung LAN Kabel verlegt und für Anschlüsse gesorgt. Mit geringen Aufwand können wir dies sogar bis zum Schreibtisch verlegen. Dies geht über folgende Methoden:

- LAN Kabel durch die Kabelschächte zum Zimmer verlegen.
- Ethernet aus der Steckdose: Ist zwar nicht ganz so schnell wie normales LAN Kabel, und etwas teurer, dafür einfacher einzurichten.

Für LAN Kabel empfehlen wir mindestens CAT5e mit mindestens 1 GBits/s. Zwar wird unser Internetanschluss nie solche Geschwindigkeiten erreichen (hier erreichen wir ca. 60 MBit/s), doch für das lokale Netzwerk ist das sehr vorteilhaft.
