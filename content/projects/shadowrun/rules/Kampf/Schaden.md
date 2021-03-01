+++
title = "Schaden"
+++

# Schaden {{ pagenum(num="172") }}

- Verletzungen
- beeinträchtigen den Charakter

## Schadensarten {{ pagenum(num="172") }}

- körperlicher und geistiger Schaden
- eigene Monitore

## Körperlicher Schaden {{ pagenum(num="172") }}

- wird durch Feuerwaffen, Explosionen, meisten Nahkampfwaffen und Zaubersprüchen verursacht
- Waffen mit körperlichen Schaden haben `K` hinter dem Schadenscode
- körperlicher Schaden verheilt langsamer
- Maximaler körperlicher Schaden: `8 + Konstitution / 2 (auf.)`

## Geistiger Schaden {{ pagenum(num="172") }}

- blaue Flecken, Erschöpfung, ...
- wird durch Schockwaffen, Schockgranaten, Zaubern, ... verursacht
- Angriffe mit geistigen Schaden haben `G` hinter dem Schadenscode
- geistiger Schaden verheilt schneller
- Maximaler geistiger Schaden: `8 + Willenskraft / 2 (auf.)`

## Streiftreffer {{ pagenum(num="172") }}

- bei Gleichstand der vergleichenden Probe zwischen Angreifer und Verteidiger
- kein Schaden
- Verteidiger wird berüht
    - Effekte wie Gift, etc. wirken

## Verletzungsmodifikatoren {{ pagenum(num="172") }}

- verursachen Schmerzen, Blutverlust, ...
- hindern bei möglichen Tätigkeiten
- pro 3 volle Kästchen auf dem Zustandsmonitor: -1 Malus als Verletzung
    - Malus ist kumulativ
    - Malus gilt für alle Proben (außer man will den Schaden verringern)
- wenn geistiger oder körperlicher Zustandsmonitor voll ist, dann wird Charakter bewusstlos

## Überschreiten des Zustandsmonitors {{ pagenum(num="172") }}

- wenn alle Kästchen (geistig oder körperlich) voll sind
- bei zusätzlichen Schaden passiert folgendes:
    - geistig:
        - wird körperlicher Schaden
        - 2 überschüssiger geistiger Schaden -> 1 körperlicher Schaden
    - körperlich:
        - `Konstitution` Schaden kann maximal extra eingesteckt werden
        - bei erreichen dieser Grenze stirbt der Charakter
- bei vollen körperlichen Schadensmonitor passiert folgendes:
    - aller `Konstitution` Minuten 1 weiteren körperlichen Schaden (Blutverlust, Schock, ...)
    - sobald überschüssiger Schaden (`Konstitution` Punkte) voll ist, stirbt der Charakter

## besondere Schadensarten {{ pagenum(num="173") }}

### Elektrizitätsschaden {{ pagenum(num="173") }}

- Stromschlag
- z.B. durch Betäubungsschlagstöcke, Taser, Schockhände, Zauber, Critter, ...
- je nach Quelle/Ziel verursacht das körperlicher/geistiger Schaden
- Panzerungsmodifikation elektrische Isolierung fügt Panzerung hinzu
- zusätzliche Faktoren können auch Auswirkungen haben (**SL**)
- kann das Ziel betäuben oder lähmen
    - nur wenn Schaden verursacht wurde
- Nebenwirkung:
    - Würfelpoolmodifikator von -1 auf alle Proben für 1 Kampfrunde
    - sofortige Senkung des Initiativeergebnisses um 5
        - falls schon <= 0, dann wird nächste Kampfrunde gesenkt
- Nebenwirkungen wirken nicht kumulativ sondern verlängern die Dauer
- elektronische Geräte und Drohnen können auch Schaden erhalten (körperlicher Schaden)
    - Nebenwirkung (Kurzschlüsse und Überladung): zusätzlicher Matrixschaden `körperlicher Schaden / 2 (ab.)`
- Fahrzeuge können auch Elektrizitätsschaden erleiden (keine Nebenwirkungen)

### Erschöpfungsschaden {{ pagenum(num="174") }}

- geistiger Schaden
- durch anstrengende Tätigkeit oder großer Stress
- wird gegen `Konstitution + Willenskraft` (ohne Panzerung) widerstanden
- solange die Umstände beibestehen kann der Erschöpfungsschaden nicht geheilt werden

#### Erschöpfung durch Laufen {{ pagenum(num="174") }}

- wenn mehrere Kampfrunden oder Handlungsphasen hintereinander sprintet
- für jede weitere Handlungsphase Sprint: kumulativ 1G Schaden
    - pro Phase 1G Schaden mehr
- bei Laufen (nicht sprinten) wird der Schaden aller 3 Minuten verursacht
- wird mit `Konstitution + Willenskraft` widerstanden

#### Erschöpfung durch Umwelteinflüsse {{ pagenum(num="174") }}

- Ursachen: heiße, kalte, feuchte, verschmutzte, verstrahlte Umgebungen
- Höhe von Intensität abhängig
- Verursacht kumulativ 1G Schaden
- Schaden wird auch bei Bewusstlosigkeit verursacht

| Stärke  | Intervall des Erschöpfungsschadens |
|---------|------------------------------------|
| Leicht  | 6 Stunden                          |
| Mittel  | 3 Stunden                          |
| Stark   | 60 Minuten                         |
| Extrem  | 1 Minute (20 Kampfrunden)          |
| Tödlich | 6 Sekunden (2 Kampfrunden)         |

#### Erschöpfung durch Hunger, Durst oder Schlafentzug {{ pagenum(num=" 174") }}

- 24 Stunden nichts gegessen, geschlafen oder (Nichtalkoholisches) getrunken
- kumulativ 1G Schaden
- Schaden endet sobald gegessen, geschlafen, getrunken

| Art          | Intervall des Erschöpfungsschadens |
|--------------|------------------------------------|
| Hunger       | 6 Tage                             |
| Durst        | 2 Tage                             |
| Schlafentzug | 3 Stunden                          |

### Fallschaden {{ pagenum(num="174") }}

- mehr als 3 Meter Fallhöhe -> Schaden
    - Schadenscode = Fallhöhe in Metern (`K`)
    - DK: -4
- Widerstanden mit `Konstitution + Panzerung`
- weiche Oberflächen können Fall bremsen

| Kampfrunde | Fallhöhe  |
|------------|-----------|
| 1.         |  50 Meter |
| 2.         | 150 Meter |
| ab 3.      | 200 Meter |

### Feuerschaden {{ pagenum(num="174") }}

- körperlicher Schaden
- kann Dinge entzünden
    - brennt bei `Panzerungswert + Feuerresistenz - Feuer-DK`
    - Schwellwert sind Nettoerfolge beim Feuerangriff
    - Gewinnt Gegenstand, brennt dieser vorerst nicht
- brennt etwas:
    - Am Anfang einen Schaden von 3K (am Ende jeder Kampfrunde)
    - jede Runde steigt der Schaden um 1
    - solange bis Gegenstand zerstört oder Feuer gelöscht
- Feuerbekämpfung (Wasser, Ersticken, ...) erfordert Probe `Geschicklichkeit + Intuition`
    - jeder Erfolg reduziert Schadenscode um 1
- Feuer kann entflammbares in der Umgebung entzünden
- Feuer zerstört Panzerung:
    - Panzerung wird pro Kampfrunde um 1 gesenkt

| Art des Feuers              |            DK             |
|-----------------------------|---------------------------|
| Offene Flammen              | -2                        |
| Auf Feuer basierende Zauber | -(Kraftstufe des Zaubers) |
| Flammenbasierte Waffe       | -6                        |

### Kälteschaden {{ pagenum(num="175") }}

- körperlicher Schaden
- kann Panzerung brüchig machen, Flüssigkeiten gefrieren, Schmiermittel verklumpen, ...
- Für jede Panzerung Probe: `Panzerungswert`
    - keine Erfolg: Panzerung zerbricht und wird unbrauchbar (kann repariert werden)
    - Patzer: irreparabel zerstört
    - kritischer Patzer: irreparabel und gefährlich

### Säureschaden {{ pagenum(num="175") }}

- körperlicher Schaden
- senkt den Panzerungswert jeder getroffenen Panzerung um 1
- wenn nicht abgewaschen (oder anderweitig entfernt) ätzt sie weiter
    - am Ende jeder Kampfrunde wird Schaden um 1 verringert und dann verursacht
    - senkt auch den Panzerungswert der Panzerung weiter
    - Bei Schadenscode 0 hört sie auf zu ätzen
- Senkung der Panzerung ist permanent und trifft oben liegende Schichten zuerst
- kann für leichten Rauch sorgen und Sicht einschränken
