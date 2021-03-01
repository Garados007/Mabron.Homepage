+++
title = "Kampfsequenz"
+++

# Kampfsequenz {{ pagenum(num="159") }}

- Handlungen innerhalb einer [Kampfrunde](Kampfrunde.md)

## 1. Ansage {{ pagenum(num="159") }}

- Angreifer sagt zu Beginn seiner Handlungsphase den Angriff an
- Verteidiger sagt an, wie verteidigt werden soll
- Eine gewöhnliche Verteidigungsprobe (`Reaktion + Intuition`) is gratis
- Unterbrechungshandlungen (Ausweichen, Parieren, Blocken, Volle Abwehr, ...) {{ pagenum(num="169") }} senken Initiativeergebnis

## 2. Angriff {{ pagenum(num="159") }}

- Angreifer führt Angriff durch
    ```
    Kampffertigkeit + Attribut +/- Modifikatoren [Limit]
    ```
- Inklusive passender Verletzungs-, Umwelt-, Rückstoß- und Situationsmodifikatoren {{ pagenum(num="175") }}

## 3. Verteidigung {{ pagenum(num="159") }}

1.  - Verteidiger würfelt
        ```
        Reaktion + Intuition +/- Modifikatoren
        ```
    - Inklusive passender Verletzungs-, Umwelt-, Situationsmodifikatoren
    - Vergleich der Erfolge von Angreifer und Verteidiger
        - Angreifer mehr: Angriff trifft Ziel, Differenz der Erfolge merken, weiter zu B
        - Gleichstand: Streiftreffer {{ pagenum(num="172") }}
        - Verteidiger mehr: Angriff schlägt fehl, fertig
2.  - Nettoerfolge zum Schadenscode addieren (= **modifizierter Schadenscode**, **MS**)
    - Durchschlagskraft (**DK**) + **Panzerung** des Verteidigers = **modifizierter Panzerungswert** (**MP**)
    - Art des Schadens:
        - **MS** >= **MP**: körperlich
        - **MS** < **MP**: geistig
    - Verteidiger würfelt `Konstitution + MP` (wenn **MP** < 0, dann nur `Konstitution`)
        - jeder Erfolg reduziert **MS** um 1
    - sollte **MS** <= 0 sein, dann kein Schaden

## 4. Wirkung verrechnen {{ pagenum(num="160") }}

- Schaden wird beim Verteidiger eingetragen
- Verletzungsmodifikatoren beachten
- eventuell Niederschlag {{ pagenum(num="194") }}
- eventuelle Nebenwirkungen berechnen {{ pagenum(num="172") }}
