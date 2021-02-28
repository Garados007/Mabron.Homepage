+++
title = "Netzwerkdienste"
weight = 10
date = 2020-01-16T23:01:41Z
[taxonomies]
tags=["wg","ip","dienste"]
+++

# Netzwerkdienste innerhalb der WG am Rosengarten

Folgende Dienste werden in unserem Netzwerk unterstützt. Die Liste hat keinen Anspruch auf Vollständigkeit.

## VPN

Wir bieten einen eigenen VPN Service mittels OpenVPN an. Dadurch erhält man eine Netzinterne IP Adresse und kann mit anderen Geräten im Netz kommunizieren als ob man selbst zuhause wäre. Der Internetzugang ist auch erlaubt.

    Leider funktioniert dieser Dienst nicht aus Staaten wie China.

Für die Nutzung bekommt jeder Nutzer ein eigenes Zertifikat ausgestellt, welches für die Anmeldung genutzt wird. Diese Zertifikate müssen nach einem Jahr aktualisiert werden.

## PiHole

PiHole ist ein eigener DNS Server, welcher folgende Vorteile bietet:

- schnellere Auflösung von DNS Namen
- geringeres Datenaufkommen durch genutzten Cache
- schädliche Webseiten werden auf allen Geräten blockiert
- manche Werbewebseiten werden blockiert

Dieser Service funktioniert bei uns automatisch im Hintergrund.

## Zentrale URL für unseren Zugang

Mittels der URL `router.mabron.de` ist ein direkter Zugang zu uns nach Hause möglich. Diese Adresse aktualisiert automatisch die IP, falls die sich bei uns ändert.

## ...

*mehr Dienste werden noch eingetragen*
