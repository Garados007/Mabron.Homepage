+++
title = "Initiative"
+++

# Initiative {{ pagenum(num="160") }}

- definiert die Reihenfolge in den Kampfrunden
- Hängt ab von:
    - Initiativewert
    - Initiativeergebnis
    - Initiativewürfel

## Initiativewert {{ pagenum(num="160") }}

| Art der Initiative        | Attribute                       | Initiativewürfel |
|---------------------------|---------------------------------|------------------|
| Physisch                  | `Reaktion + Intuition`          | 1W6              |
| Astral                    | `Intuition * 2`                 | 2W6              |
| Matrix AR                 | `Reaktion + Intuition`          | 1W6              |
| Matrix: VR mit kaltem Sim | `Datenverarbeitung + Intuition` | 3W6              |
| Matrix: VR mit heißen Sim | `Datenverarbeitung + Intuition` | 4W6              |
| Rigger AR                 | `Reaktion + Intuition`          | 1W6              |
| Rigger: VR mit kaltem Sim | `Datenverarbeitung + Intuition` | 3W6              |
| Rigger: VR mit heißem Sim | `Datenverarbeitung + Intuition` | 4W6              |
| Rigger: Direktverbindung  | `Reaktion + Intuition`          | 4W6              |

## Initiativeergebnis {{ pagenum(num="161") }}

- Ablegen der Probe aus den Initiativewürfeln
- Edge kann ausgegeben werden
    - Probe mit Maximum von 5W6
- Ergebnis bestimmt Reihenfolge
- Bei Gleichstand von Punkten, dann anhand von:
    1. Edge
    2. Reaktion
    3. Intuition
    4. Münzwurf

## Initiativedurchgänge {{ pagenum(num="161") }}

- die Durchgänge innerhalb einer Kampfrunde
- Nach jedem Durchgang wird das Initiativeergebnis um 10 reduziert
- Solange bis alle keine Punkte mehr haben

## Veränderung der Initiative {{ pagenum(num="161") }}

- Initiative kann sich mitten im Kampf ändern
    - Aktivierung von Implantaten
    - Konsumieren von Drogen
    - Wirken von Zaubern
    - Verletzungen
    - Schaden an wichtiger Ausrüstung
    - Enden von Zaubern
- Veränderungen werden sofort als Bonus oder Malus verrechnet
    - gilt für alle Handlungen in der aktuellen Kampfrunde
    - Zusätzliche Würfel werden sofort gewürfelt
    - Verlorene Würfel werden gewürfelt und Wert wird abgezogen
- Falls ein Charakter mitten in einer Kampfrunde beteiligen will:
    - Initiative ermittelt
    - 10 pro Durchgang abziehen
    - Er nimmt normal daran teil, sofern > 0
    - In folgenden Kampfrunden wird alles wieder normale ermittelt

## Initiative und Edge {{ pagenum(num="162") }}

Für folgende Effekte kann Edge ausgegeben werden:

1. **Initiative ergreifen**:
    - Charakter kommt an die Spitze der Reihenfolge
    - Wenn mehrere Edge hierfür einsetzen, dann diese zuerst anhand ihres Ergebnisses
    - Andere Charaktere handeln danach
    - Effekt hält bis zum Ende der Kampfrunde an
2. **Blitzangriff**:
    - Es wird mit 5W6 gewürfelt, dies ist das Initiativeergebnis
    - Gilt nur für eine Kampfrunde

Pro Kampfrunde ist es nur **einmal** möglich Edge auszugeben!

## Handlung verzögern {{ pagenum(num="162") }}

- falls man die Handlung anderer abwarten möchte
- muss in Schritt 3A in der [Kampfrunde](Kampfrunde.md)
- Handlung kann auch auf einen späteren Initiativdurchgang verzögert werden
- es ist nicht möglich zwei Handlungsphasen in einem Initiativdurchgang zu bekommen
    - Handlung wird ersetzt
- Man erhält einen Malus von -1 auf verzögerte Handlungen
- Wenn mehrere Charaktere auf den selben Zeitpunkt verzögern, dann ist Reihenfolge anhand des Initiativeergebnisses
- Wenn mehre Charaktere als letztes handeln möchten, dann ist Reihenfolge in umgekehrter Reihenfolge des Initiativeergebnisses

## Zeitgesteuerte Gegenstände und Initiative {{ pagenum(num="163") }}

- einige Gegenstände (Granaten, Bomben, Fallen mit Zeitzünder, ...) gehen zum festgelegten Zeitpunkt los
    - meistens: `aktuelle Initiativeergebnis - 10` vom auslösenden Charakter, aber in der nächsten Kampfrunde
    - ist die Initiative < 10, dann am Ende der Kampfrunde
- mit einstellbaren Zünden müssen vom Spieler vorher festgelegt werden
- bei Gleichstand der Initiative: Zeitgesteuerte Gegenstände sind immer zuletzt dran
- funkgesteuerte Gegenstände benötigen eine Handlungsphase des Charakters
