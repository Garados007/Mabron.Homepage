+++
title = "Umgestaltung der 2 Complex Server"
date = 2022-12-20T17:43:00
weight=200
author="Max Brauer"
[taxonomies]
tags=["blog","project","2complex","server"]
authors=["Max Brauer"]
+++

# Umgestaltung der 2 Complex Server

Seit 2016 betreibe ich mit einen guten Freund ein paar Spieleserver im Internet. Das Ganze
hat recht klein als Minecraft-Server, der im Hintergrund auf meinen Rechner lief, angefangen. Doch
recht schnell entwickelte sich das weiter, sodass wir uns 2017 einen dedizierten Rechner dafür
anlegten. Der stand dann bei mir rum und stellte 24/7 Minecraft-Server im Internet bereit. 2018
erhielt der Rechner ein großes Upgrade.

<!-- more -->

Wieder ein paar Jahre später, ca. 2020 haben wir angefangen, uns im Internet einen Server dazu zu
mieten. Dadurch entstand ein kleines Netzwerk. Im Internet war ein gut erreichbarer Server mit einer
guten Internetleitung und bei mir zu Hause war ein leistungsfähiger Rechner für die Modded Server.

In der darauf folgenden Zeit haben wir immer mehr Services zu den Servern hinzugefügt. Ich habe
verschiedene Dienste programmiert und auf dem Online-Server bereitgestellt. Mein Kumpel hat immer
mehr verschiedene Spiele auf die Server gezogen, sodass immer mehr Leistung nötig wurde und dies mit
noch mehr Servern kompensiert wurde (2022 wurde ein zweiter Server hinzugefügt).

Leider wurde nicht alles von Anfang an gut durchdacht, da es einfach historisch gewachsen ist. Für
ein-zwei Rechner mag das am Anfang noch alles funktioniert haben, aber mittlerweile stoßen wir an
unsere Grenzen, diese überhaupt noch sinnvoll und sicher zu verwalten.

## Was für Server haben wir?

Ohne genaue IP-Adressen zu nennen, haben wir folgende Server:

1. Der leistungsfähige Rechner (`"Xikerion"`), der bei mir rumsteht. Schlechte Internetanbindung,
   dafür gehen auch leistungshungrige Spiele.
2. Ein allgemeiner Server im Internet (`"Freyr"`). Hier läuft ein Minecraft-Netzwerk und
   verschiedene Webdienste. Der wird von uns beiden verwaltet.
3. Ein kleinerer Server im Internet (`"Cookie"`). Hier hat der Kumpel ein paar Dienste für
   verschiedene Projekte von der Schule laufen, mit denen er besondere Vereinbarungen hat.
4. Ein kleiner Backup-Server (`"Keksdose"`) beim Kumpel. Der zieht sich von allen Servern die
   lokalen Backups und sichert diese zusätzlich bei sich. Der Kumpel nutzt diesen auch als NAS.
5. Mein privates Hosting (hat keinen Namen) bei Strato, wo ich meinen Webauftritt und ältere und
   aktuelle Projekte lagere.

Da das Netzwerk gerade an seinen Grenzen ist, planen wir 2-3 weitere Server hinzuzufügen und die
Aufgaben sinnvoll zu verteilen.

## Was für Probleme haben wir?

Wir haben die Struktur und den Aufbau des Netzwerks nie gut durchdacht oder nach einem sinnvollen
System aufgebaut. Wir haben immer gerade das umgesetzt, was in dem Moment sinnvoll war und irgendwie
funktioniert. Es wurde zwar einiges dokumentiert, aber das hilft wenig, wenn es merkwürdige
Abhängigkeiten gibt und wir quasi das ganze Netzwerk in den Wartungsmodus oder als offline setzen
müssen, nur damit ein Rechner Updates installieren darf.

Außerdem lassen die Server sich recht bescheiden verwalten. Es muss auf jedem Server einzeln
angemeldet und nach dem aktuellen Stand geschaut werden. Zwar haben wir es geschafft, immer mehr
Automatismen einzubauen, aber jeder Server hat seine eigenen Einstellungen, Monitoring und Macken.

Ein kleines Beispiel: Wir wollen einen neuen Minecraft-Server aufsetzen, der ins Bungecoord-Netzwerk
eingebunden werden soll, aber durch Plug-ins so viel Leistung verbraucht, dass er auf einen
leistungsstärkeren Rechner muss. Dafür sind folgende Schritte nötig:

- Definieren der Spezifikationen für den Minecraft-Server. Was ist der maximale Java-RAM, welche
  Minecraft-Version, Plug-ins, etc.
- Definieren eines internen Minecraft-Ports. Dieser muss in einer Liste eingetragen werden. Prüfung
  der Firewalls, ob diese Ports durchgelassen werden.
- Generieren des Custom-Docker-Scripts und anpassen dessen.
- Eintrag des Docker-Scripts in einer Docker-Compose-Datei
- Start des Minecraft-Servers auf dem leistungsstarken Rechner, hierfür muss sich auf dem Rechner
  angemeldet werden. Es kann hierbei sein, dass alle lokalen Minecraft-Server neu gestartet werden
  müssen, damit dies im aktiven Docker-Compose übernommen wird.
- Eintrag ins Bungeecord
- Neustart von Bungeecord. Auch hier können lokale Server neugestartet werden, damit dies übernommen
  wird.

Das ist ein relativ großer Aufwand und dies zieht sich vergleichbar durch viele andere Probleme mit
durch. Das größte Maß an Automatismus haben wir bei meinen kleinen Webdiensten erreicht:

- Projekt lokal klonen.
- Docker-Compose anpassen.
- Eintrag in der Config für Webhooks vornehmen. Dieser wird automatisch übernommen.
- Webhook-Eintrag bei GitHub vornehmen.
- Restart-Skript kopieren. Wenn nötig anpassen.
- Nginx-Eintrag vornehmen.
- HTTPS-Zertifikat beantragen.

Danach läuft das alles automatisch. Die HTTPS-Zertifikate werden automatisch aktualisiert und falls
es neue Dinge auf GitHub gibt, so ist der Dienst meist in weniger als einer Minute automatisch neu
aufgesetzt.

Wie bei uns derzeit Speicher und Back-ups organisiert werden, möchte ich nicht genauer eingehen. Es
lässt sich aber so viel sagen: Wir haben Dutzende Back-ups! Zum Teil nicht wirklich sinnvoll
organisiert und zum Teil nicht direkt synchronisiert.

Was wir aber als unser größtes Problem aufzählen können, ist, dass es sehr zeitintensiv ist,
ausgefallene Dienste oder Server wieder zum Laufen zu bringen!

## Was planen wir?

Seit einigen Monaten haben wir in einem privaten GitHub Repository uns Aufgaben und Probleme
aufgelistet, die wir mit dem aktuellen Netzwerk haben und wie es in Zukunft sein soll. Schritt für
Schritt arbeiteten wir diese ab und versuchten notwendige Informationen zu recherchieren oder
Test-Set-ups aufzubauen, um einmal alles durchzuspielen.

Hierbei wollen wir uns an einem Docker-Swarm-Netzwerk versuchen und alle unsere Dienste darin
einzugliedern. Dazu kommt einiges an Monitoring und Verwaltung hinzu. Außerdem wollen wir endlich
unseren Speicher sinnvoll verwalten, sodass wir einfacher und effizienter von allen Back-ups
erstellen können.

Ziel ist es, das ganze Netzwerk einfach verwalten und skalieren zu können. Dafür soll noch ein Maß
an Ausfallsicherheit hinzukommen, damit wir nicht das ganze Netzwerk abschalten müssen, falls ein
Rechner Updates braucht oder bei einem anderen schon wieder Stromausfall ist (ich sage nur
"Baustelle").

Dabei hat sich herausgestellt, dass unsere Bedürfnisse recht umfangreich sind und viel Zeit in der
Umsetzung verbrauchen. Hinzu kommt, dass für einige Sachen Software oder Skripte entwickelt werden
müssen, die uns dann die zukünftige Arbeit erleichtern.

## Wo stehen wir und wann geht es los?

Mit den Plänen sind wir so weit durch. Auch verschiedene Testszenarios wurden aufgebaut und
kaputtgemacht. Bis jetzt wurde alles über einen Haufen virtueller Maschinen realisiert, die reale
Umsetzung fehlt noch.

Derzeit fehlt noch ein Teil der Software und der Skripte, die ich mir auf die Fahne geschrieben
habe, da mein Kumpel nicht programmieren kann (er hat einfach keine Lust dazu, er verwaltet lieber
Rechner).

Bis das umgesetzt ist, werden bestimmt noch 1-2 Monate vergehen, da mein Terminkalender derzeit
durch Uni, Arbeit und sozialen Verpflichtungen recht dicht gepackt ist und ich daran nur dann
weiterarbeite, wenn ich Lust zum Programmieren habe. Und da hilft es auch nicht, wenn ich so wie
jetzt an dem Blog weiterschreibe.

## Was passiert mit dieser Webpräsenz?

Erst einmal gar nichts. Wir bauen zuerst 2 Complex um und schauen, wie stabil das dann funktioniert.
Sobald alles mit den Speichern, Back-ups, DNS und der Ausfallsicherheit zuverlässig funktioniert,
werde ich nach und nach Teile der Domain `mabron.de` auf die neue Serverlandschaft umziehen. Manches
wird für immer offline genommen und nur noch in Back-ups oder Archiven existieren. Anderes wird
modernisiert und weiterhin unter der gleichen Domain verfügbar sein. Aber das ist ein Beitrag für
einen zukünftigen Blog-Post.

---

## Updates

### 14.01.2023

- es wurden ein paar Jahresangaben korrigiert bzw. konkretisiert
