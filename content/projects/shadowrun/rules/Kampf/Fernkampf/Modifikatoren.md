+++
title = "Modifikatoren"
+++

# Fernkampfmodifikatoren {{ pagenum(num="175") }}

## Umweltmodifikatoren {{ pagenum(num="175") }}

- sowohl für Angreifer als Verteidiger berücksichtigt
- um Modifikator zu bestimmen wir der schwerste Beeinträchtigung berücksichtigt
- sind zwei Modifikatoren gleich stark, wird die Kategorie um 1 erhöht
- Entfernung zählt auch als Modifikator

| Sichtverhältnisse | Beleuchtung | Wind | Entfernung | Modifikator |
|-|-|-|-|-|
 Freie Sicht | Gute Beleuchtung/Keine Blendung | Windstille oder leichte Brise | Kurz | - |
| Leichter Regen/Nebel/Rauch | Teilbeleuchtung/Schwache Blendung | Leichter Wind  | Mittel | -1 |
| Mittlerer Regen/Nebel/Rauch | Schwache Beleuchtung/Mittlere Blendung | Steife Brise | Lang | -3 |
| Starker Regen/Nebel/Rauch | Völlige Dunkelheit/Starke Blendung | Sturm | Maximal | -6 |
| Zwei oder mehr Modifikatoren -6 |||| -10 |

### Kompensation von Umweltmodifikatoren {{ pagenum(num="176") }}

- Modifikatoren durch Umweltbedingung können durch passende System, Geräte, Zauber verringert werden
- Kompensation ist Aufgabe des Spielers nicht des **SL**
- jedes System wirkt gegen einen oder mehrere Modifikatoren
    - bestimmen wie stark die Modifikatoren beeinflusst werden

| Kompensation | Wirkung |
|-|-|
| Blitzkompensation | Blendung um 2 Kategorien verringert |
| Infrarotsicht | Sichtverhältnisse und Beleuchtung wird um 1 Kategorie verbessert |
| Leuchtspurmunition (AM) | Wind über leichten Wind und Entfernung über Kurz werden um 1 Kategorie vermindert |
| Restlichtverstärkung | Teilbeleuchtung und schwache Beleuchtung gelten als gute Beleuchtung |
| Sichtvergrößerung | Reduziert den Entfernungsmodifikator um 1 Kategorie |
| Smartlink | Wind wird um 1 Kategorie verringert |
| Sonnenbrille | Blendung wird um 1 kategorie verringert. Beleuchtung um 1 Kategorie verschlechtern. |
| Ultraschall | Sichtverhältnisse werden um 1 Kategorie vermindert, Beleuchtungsmodifikatoren bis 50 Meter Entfernung werden ignoriert. |

| Bedingung         | Kompensationsmöglichkeiten                                     |
|-------------------|----------------------------------------------------------------|
| Sichtverhältnisse | Infrarotsicht, Ultraschall                                     |
| Beleuchtung       | Infrarotsicht, Restlichtverstärkung, Sonnenbrille, Ultraschall |
| Wind              | Leuchtspurmunition (AM), Smartlink                             |
| Entfernung        | Leuchtspurmunition (AM), Sichtvergrößerung                     |

### Sichtverhältnisse {{ pagenum(num="176") }}

- Nebel kann Gefahren oder sich selbst verstecken, kann verwirren (Erscheinungen)
- Ursachen: natürlicher Regen, Nebel, Rauch, Rauchschleicher, ...
- Ultraschall: vermindert die Behinderung
- Infrarotsicht: kompensiert außer bei IR-Rauch

### Beleuchtung {{ pagenum(num="176") }}

- gibt viele Möglichkeiten die Beleuchtung anzupassen (bzw. Nachteile auszugleichen)
- Ultraschall: eliminiert alle Modifikatoren durch Beleuchtung innerhalb 50 Meter
- Infrarot: hilft bei jeder Beleuchtung
- Blitzkompensation, Sonnebrillen: helfen wenn Licht zu hell
- Restlichtverstärkung: helfen bei schwachem Licht

### Wind {{ pagenum(num="176") }}

- beeinflusst die Flugbahnen von Schüssen
- kann Einfluss am Schützen, am Ziel oder dazwischen haben
- Modifikator kann durch Smartgunsysteme, Leuchtspurmunition, usw. gesenkt werden

### Entfernung {{ pagenum(num="177") }}

- spielt beim Schießen und Werfen immer eine Rolle
- siehe Waffenreichweiten {{ pagenum(num="185") }}
- Modifikation wird durch Sichvergrößerung und Leuchtspurmunition gesenkt

## Rückstoß {{ pagenum(num="177") }}

- Wirkung auf den Schützen beim Abfeuern einer Waffe
- je mehr Schüsse direkt hintereinander - desto stärker der Rückstoß
- bei zwei Waffen
    - zählt als Gesamtrückstoß
    - beeinflusst sich gegenseitig
- Malus:
    - Rückstoßkompensation:
        - Basis: `1 + Stärke / 3 (auf.)`
        - dazu die Rückstoßkompensation aller bereitgemachter Waffen
        - abzüglich der Anzahl der abgefeuerten Kugeln
    - Ist Rückstoßkompensation < 0, dann ist dies der Malus auf den Angriff (positive Werte werden ignoriert)
- Malus wird angewandt bevor Würfelpools aufgeteilt werden

### Kumulativer Rückstoß {{ pagenum(num="177") }}

- mit jeder abgefeuerten Kugel erhöht sich der Rückstoß
    - solange bis Charakter aufhört zu schießen oder Waffe unter Kontrolle bringt (etwas anderes als Schießen machen)
- Modifikator sammelt sich kumulativ über Handlungsphasen und Kampfrunden hinweg
- Malus betrifft Charakter (nicht Waffe)

### Einzelne Schüsse {{ pagenum(num="177") }}

- Waffen mit EM können nicht mehrere Kugeln hintereinander abfeuern
    - erzeugen normalen und keinen kumulativen Rückstoß
- Falls Mehrfachangriff genutzt wird entsteht Rückstoß dennoch

### Fahrzeug- und Drohnenwaffen {{ pagenum(num="178") }}

- Fahrzeug stellt Rückstoßkompensation:
    ```
    Rumpfattribut Fahrzeug + Rückstoßkompensation Waffe
    ```

## Situationsmodifikatoren {{ pagenum(num="178") }}

- so ziemlich alle anderen Modifikatoren
- behandeln Dinge, die ein Charakter nebenbei macht
- sonstige Effekte (Zauber, etc.)
- Effekte sind kumulativ zu anderen Modifikatoren

| Situation                                      | Würfelpoolmodifikator für den Angreifer |
|------------------------------------------------|-----------------------------------------|
| Angesagtes Ziel                                | -4                                      |
| Angreifer benutzt Nebenhand                    | -2                                      |
| Angreifer feuert aus der Deckung mit Sichgerät | -3                                      |
| Angreifer feuert aus sich bewegendem Fahrzeug  | -2                                      |
| Angreifer im Nahkampf                          | -3                                      |
| Angreifer läuft                                | -2                                      |
| Angreifer verletzt                             | -`Verletzungsmodifikator`               |
| Blind feuern                                   | -6                                      |
| Einfache Handlung Zielen                       | `+1 Würfelpool` oder `+1 Präzision`     |
| Kabellose Smartgun                             | Ausrüstung: `+1`; implantiert: `+2`     |

### Angesagtes Ziel {{ pagenum(num="179") }}

- wenn sehr gut Zielen möchte
- Freie Handlung `Ziel ansagen` notwendig

### Angreifer nutzt Nebenhand {{ pagenum(num="179") }}

- Immer wenn die Nebenhand genutzt wird
- gilt auch bei Angriffen mit beiden Händen gleichzeitig

### Angreifer feuert aus der Deckung mit Sichtgerät {{ pagenum(num="179") }}

- mittels Kameras oder Smartgunsystemen kann eine Waffe auch um die Ecke schießen
- aus der Deckung ist nicht ganz so einfach wie richtig schießen

### Angreifer feuert sich aus bewegenden Fahrzeug {{ pagenum(num="179") }}

- Fahrzeug bewegt sich
- nicht ganz so einfach (Hindernisse, holprige Fahrbahn, ...)
- nur mit nicht fahrzeugmontierten Waffen

### Angreifer im Nahkampf {{ pagenum(num="179") }}

- Man ist durch den Nahkampf abgelenkt
- Für alle Fernkampfangriffe aus dem Nahkampf heraus

### Angreifer läuft {{ pagenum(num="179") }}

- schnelle Bewegung hindert beim Zielen

### Angreifer verletzt {{ pagenum(num="179") }}

- Verletzungen hindern bei allen Fernangriffen

### Blind feuern {{ pagenum(num="179") }}

- Wenn Angreifer sein Ziel nicht sehen kann (Deckung, Dunkelheit, ...)
- Malus ist genauso hoch wie völlige Dunkelheit
    - nicht mit Sichtverhältnisse kumulativ

### Einfache Handlung Zielen {{ pagenum(num="179") }}

- erhöht Würfelpool oder Präzision

### Kabellose Smartgun {{ pagenum(num="179") }}

- allein die Nutzung einer kabellosen Smartgun bringt einen Angriffsbonus
- wenn man zielt, gibt es einen zusätzlichen Bonus auch darauf
