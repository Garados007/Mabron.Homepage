+++
title = "Sicherheit"
+++

# Sicherheit {{ pagenum(num="355") }}

- Sicherheitsdienst, etc.
- Halten die Runner auf Trap

## High Threat Response (HTR) {{ pagenum(num="355") }}

- Konzerne mit oder gegen Runner
- jeder Konzern hat seine eigenen Sicherheitsmaßnahmen um sich selbst zu schützen
    - keine ständigen hochkarätigen Sicherheitskräfte (bis auf seltene Ausnahmen)
- erste Verteidigungslinie:
    - einfache Wachleute
    - automatische Verteidigungsanlagen
- ein HTR-Team (Backup-Team) in der Hinterhand
    - können es mit Runnern aufnehmen
    - vom selben Unternehmen oder von:
        - Lone Star
        - Knight Errant
        - Eagle Security
        - ...
- Sicherheitsteams sind günstig

### HTR-Reaktionszeiten {{ pagenum(num="355") }}

- hängt vom Sicherheitsniveau ab

| Niveau | Zeit | Beispiel |
|-|-|-|
| AAA | 1W6 Minuten | Innenstadt, Megakonzernzentrale, Militäranlage |
| AA | 1W6 + 4 Minuten | Luxus-Wohnanlage |
| A | 2W6 + 3 Minuten | Mittel- bis Oberklasse-Wohnanlage, gewöhnliche Konzerne |
| B | 1W6 * 5 Minuten | Mittelklasse-Wohnanlage, Industriegebiete |
| C | 1W6 * 10 Minuten | Unterklassen-Wohngegenden, Lagerhäuser |
| Z | 2W6 Stunden | Redmond Barrens, ehem. Containment Zone |

## Abwehr physischer Bedrohung {{ pagenum(num="355") }}

- gewöhnliche Sicherheitskräfte versuchen Runner so lange wie möglich aufzuhalten

### Deckung {{ pagenum(num="356") }}

- vermeiden von Treffern
- Sicherheitskräfte werden zuerst in Deckung gehen, bevor sie agieren
    - physische Objekte
    - Rauch-, Schockgranaten
    - Magische Effekte
    - Umgebung nutzen (Licht ausschalten)
    - ...

### Sperrfeuer {{ pagenum(num="356") }}

- bei taktischen Vorrücken geben sie einander Feuerschutz
    - Sperrfeuerangriff {{ pagenum(num="180") }}

### Hinterhalte {{ pagenum(num="356") }}

- die Sicherheitskräfte kennen die Umgebung
    - geheime Stellen, die taktisch günstig sind
- Überraschungsmomente nutzen

### Fallen S(. 357)

- kostengünstige Maßnahmen um sich selbst zu schützen
- Auslöser:
    - Handlung oder Ereignis, welches Falle aktiviert
    - Sensor oder Ähnliches
        - Stolperdraht, Druckplatte
        - biometrische Datenbank, elektrische Sensoren
    - Bedingungen wann sie nicht ausgelöst werden (autorisiertes Personal, ...)
- Wirkung:
    - Was macht die Falle nach Auslösung?
    - kann Feinde aufhalten oder auch töten
        - Tür verriegeln
        - Gas (etc.) freisetzen
        - automatische Geschütze

Sicherheitstaktiken:
- Deckung {{ pagenum(num="191") }}
- Rauchgranate {{ pagenum(num="438") }}
- Schockgranate {{ pagenum(num="438") }}
- Sperrfeuer {{ pagenum(num="198") }}

## Abwehr von Matrixbedrohungen {{ pagenum(num="357") }}

- alles ist miteinander vernetzt
- Matrix ist nun viel sicherer als jemals zuvor und stark überwacht

### Zugangsbeschränkung {{ pagenum(num="357") }}

- normalerweise laufen Geräte im Normalmodus:
    - geben jedem die Anwesenheit bekannt
    - laden andere Geräte ein Verbindungen aufzubauen
- im Öffentlichen Bereich muss jeder per Gesetz sein Gerät auf Normalmodus laufen lassen:
    - Identifizierung der Person
- im sicherheitskritischen Bereich geht das Gerät auf Schleichfahrt {{ pagenum(num="232") }}
    - Beschränkung der Signalreichweite (Rauschen)
        - bestimmte Materialien zur Abschwächung der Signal
        - Faradaykäfig
- da Daten nur lokal begrenzt verfügbar sind, ist physische Sicherheit wichtig

### PANs und WANs {{ pagenum(num="358") }}

- Geräte als Master&Slave einrichten {{ pagenum(num="230") }}
    - unsichere Geräte werden als Slave zu einem sicheren Geräte eingerichtet
    - unsicheren Geräte können nur vom Master erreicht werden
    - alle Geräte nutzen die Stufe des Masters statt der eigenen
- Slaves können direkt per Kabel verbunden werden
    - Würfel nun direkt mit der Stufe des Slaves
    - kann auch den Master direkt angreifen (mit Stufe des Slaves)
- Slaves werden extra physisch abgeschirmt

### Hosts und IC {{ pagenum(num="358") }}

- Netzwerkbesitzer nutzen Hosts {{ pagenum(num="244") }}
    - alle Geräte werden zum Host zusammengeschalten
    - einzelne Geräte können nicht mehr manipuliert werden
    - Host muss zuerst angegriffen werden
    - Anwendungen laufen auf dem ganzen Netzwerk an sich
    - Host = Master für alle Geräte
- auf Hosts können Intrusion Countermeasures (IC) laufen
    - arbeiten nur in der Matrix (vergleichbar mit Drohnen)
    - können Eindringlinge suchen oder behindern
    - können Ausrüstung der Hacker Schaden zufügen
    - kaum anpassbar, führen ihren Job aber sehr gut aus
    - hohe Reaktionsschnelligkeit und Widerstandsfähigkeit
    - IC sind Programme und können innerhalb einer Kampfrunde aktiviert werden
    - IC können immer wieder neugestartet werden
- auf einem Host können nur so viele IC laufen wie Stufe
- IC sind nicht wählerisch bei den Zielen
- auf dem Hosts sind meist keine IC permanent aktiv
    - Ausnahme Patrouillen-IC
        - überprüft Nutzer und verdächtige Aktivitäten
        - können proaktiv andere IC Programme starten
- Hosts und IC sind günstig

### Götter und Spinnen {{ pagenum(num="359") }}

- Spinnen:
    - metamenschliche Sicherheitsexperten
    - überwachen ihr Netzwerk (oder Gruppe von Netzwerk)
    - hat mindestens die Fertigkeiten und Ausrüstung der Hacker
    - verteidigen Systeme und greifen nicht an
    - versucht das System unter allen Umständen zu schützen
    - Rechte eines Besitzers oder Administrators auf jedem Gerät
        - können Befehle erteilen ohne Marken zu platzieren (Marken sind schon da)
    - können IC aktivieren und deaktivieren, Alarm auslösen und beenden
    - können Notabschaltung des gesamten Systems veranlassen
    - erledigen Job ausschließlich in der Matrix
        - können mit dem Körper vor Ort sein, müssen sie aber nicht
- Grid Overwatch Division (GOD):
    - Schwergewichte, virtuelle schwarze Männer
    - vom Konzerngerichtshof und Ableger (demiGODs)
    - bieten Sicherheitsdienste für individuelle Gitter an
    - talantiersteten, genialsten, bestausgerüsteten Sicherheitsleute in der Matrix
    - meisten Hacker haben Angst vor ihnen (zu Recht)
    - treten in Aktion bei:
        - besonders schweren Sicherheitsverletzungen
        - andere Dinge wie wiederholtes Eindringen (vor allem unbemerkte)
        - bei besonders hartnäckigen oder auffälligen Einbruchsversuchen
    - Hacker mit Top Ausbildung und beste Ausrüstung auf dem Markt
    - hat ein Äquivalent von Eigentümermarken auf jedem Gerät in seinem Gitter
- manchmal auch Technomancer als Spinnen:
    - selten und teuer
    - ausgiebiger Einsatz von ungewöhnlichen Fähigkeiten (u.a. durch Sprites)

Gerätestufen:

| Gerät                    | Stufe |
|--------------------------|-------|
| Verkaufsautomat          |   1   |
| Kamera                   |   1   |
| Türschloss               |   2   |
| Sensor                   |   2   |
| Normale Drohne           |   3   |
| Sicherheitsdrohne        |   3   |
| Workstation              |   3   |
| Konzernserver            |   4   |
| Sichereitszentraleinheit |   5   |

### Festverdrahtung {{ pagenum(num="359") }}

- statt WiFi Verbindungen wird alles mittels Kabel vernetzt
- selten, recht unpraktisch
- sicher gegen Angriffe über WiFi
- schränkt Mobilität der Geräte ein
- ständige Wartung erforderlich
- Kabel können angezapft werden, Daten werden dann weitergeleitet
- meisten Konzerne vertrauen der WiFi Verbindung

## Abwehr magischer Bedrohungen {{ pagenum(num="360") }}

- Magie ist sehr mächtig und sehr selten
- bei den meisten mit magischen Fähigkeiten sind diese nicht stark ausgeprägt (für Sicherheit)
- magische Sicherheit ist sehr teuer
- es gibt aber ein paar Konzepte

### Taktiken für Mundane {{ pagenum(num="360") }}

- günstig
- die Sicherheitskräfte sind darauf trainiert
    - die erste Maßnahme, welche sie durchführen
    - wenden das sofort an, sobald magische Aktivitäten bemerkt werden {{ pagenum(num="278") }}
- den Magiern wird höchste Priorität beigemessen
    - man pumpt diesen mit Blei voll
    - *"Zuerst den Magier umlegen"*
- Sichteinschränkung
    - Deckung, Schockgranaten, Rauch
- magische Sicherheit anfordern

### gemietete magische Sicherheit {{ pagenum(num="360") }}

- es ist sehr teuer magische Sicherheitskräfte permanent im Einsatz zu haben
    - über Dienstleister kommen Kräfte auf Anfrage
- die Kräfte holen sich zuerst einen Überblick und bestätigen die Gefahr
- wehren dann die Gefahr ab und bleiben u.U. noch länger und beobachten
- magische Sicherheit kann auch Teil des HTR-Teams sein
    - u.U. auch nachkommen

### Magische Barrieren {{ pagenum(num="360") }}

- besonders kostengünstige Methode des magischen Schutzes
    - so ziemlich jeder Konzern nutzt diese
    - Basislieferumfang
- eine Barriere auf astraler Ebene (manchmal auch physisch)
    - schützt andere Seite vor Beobachtung durch astrale Wesen
- passive Sicherheitsmaßnahmen
- verlangsamen das Eindringen
- Zauberer spüren das Zerstören, Angreifen und Durchbrechen der Barriere
    - informieren dann die Kontaktpersonen

