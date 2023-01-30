+++
title = "Schnellerer Webseiten Upload"
date = 2023-01-15T17:31:00
weight=150
[taxonomies]
tags=["blog", "mabron"]
authors=["Max Brauer"]
+++

# Schnellerer Webseiten Upload

Seit Anfang an wird der Blog mit einem selbstgeschriebenen Skript auf dem Webserver hochgeladen.
Dazu wird nach dem Erstellen der Webseite in der Github Actions CI Pipeline ein Bash Script
aufgerufen, welches sich mit einem PHP Script auf dem Server verbindet und die Daten abgleicht.

<!-- more -->

Dies ist recht aufwändig, da ich zum Teil Daten auf der Hauptseite habe, bei denen ich nicht möchte,
dass die beim erneuten Hochladen überschrieben oder gelöscht werden. Das sind zum Beispiel
Unterseiten von Freunden oder eigene Sachen, die ich nicht auf einer Subdomain unterbringen wollte.

Leider ist der Prozess recht kompliziert und das Script ist alles andere als schnell. So braucht ein
üblicher Ablauf in den Github Actions an die 5 bis 10 Minuten. Später habe ich festgestellt, dass
der Provider mir das Programm rsync auf dem Server bereitstellt. Mit diesem ist es möglich schnell
und effizient Ordner auf verschiedenen (oder gleichen) Servern zu synchronisieren.

Leider braucht man hierfür SSH Zugriff und ich wollte nicht Github mein Masterpasswort für die
Webseite übergeben. Von daher blieb es bei der langsamen Scriptlösung. Erst letztes Jahr habe ich
per Zufall entdeckt, dass der Provider auch SSH-Keys unterstützt. Damit kann man für jedes Gerät,
welches sich anmelden möchte, eine Art eigenen Schlüssel (quasi Passwort) erzeugen und beim Provider
hinterlegen.

So habe ich mich nun hingesetzt und den Synchronisationsprozess auf Rsync umgestellt. Dadurch ist
die komplette Ausführzeit der CI Pipeline auf Github Actions auf unter eine Minute geschrumpft und
ich muss nicht mehr mit halb-funktionierenden Skripten hantieren.
