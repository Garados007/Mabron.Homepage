+++
title = "Game Server - Beitrag 1"
date = 2021-03-24T23:54:00
weight=240
[taxonomies]
tags=["blog","project","game-server"]
+++

# Game Server - Beitrag 1

Seit vielen Jahren habe ich ein großes Projekt am Laufen: Das von mir geliebte Spiel `Werwölfe von
Düsterwald` auf eine Plattform zu bringen, wo wir nicht mehr darauf angewiesen sind uns persönlich
zu treffen. Dafür hatte ich eine Webseite geschrieben (anfangs noch mit PHP und MySQL) mit der das
online möglich sein soll.

Über den Zeitraum hinweg habe ich das Projekt immer wieder stark verändert, da eins immer konsistent
war: es ließ sich schwer testen und war voller Fehler. Das war mitunder an der Architektur
geschuldet, bei der ein Debugging nur schwer möglich war.

<!-- more -->

Anfang diesen Jahres habe ich mich dem Projekt erneut angenommen, doch diesmal habe ich nicht nur
einzelne Komponenten ersetzt, sondern gleich alles. Die Plattform, die Datenbank und die verwendeten
Programmiersprachen. Ich war dadurch nicht nur äußerst schnell, sondern ich hatte innerhalb von
einen Monat einen lauffähigen Prototypen mit allen Rollen des Hauptspiels und ein paar Sonderrollen
der Erweiterungen zusammen. Der war nicht nur optisch ansprechend, sondern auch deutlich
umfangreicher als alles bisherige. Und ein was ging diesmal: Ich konnte jederzeit in den Code
reinspringen und mir anschauen was auf dem Server so los war.

## Was war jetzt an dieser neuen Version so groß anders?

1. Das neue Backend wurde diesmal komplett in C# geschrieben. In dieser Programmiersprache kann ich
   schneller als bei dem alten PHP Code entwickeln, da es einen besseren Debugger und eine bessere
   Typüberprüfung gibt. Außerdem hat C# noch eine Menge nette Funktionen, die mich ähnliche
   Funktionen in viel weniger Code schreiben lassen.
2. Das neue Backend ist schneller. In C# kann ich problemlos mit Parallelität arbeiten. Das war in
   PHP nicht wirklich so einfach.
3. Ich muss keine Zustände mehr auf eine Datenbank schreiben. Alle Spielzustände sind jetzt im RAM
   und dadurch schneller zugreifbar. Ich habe weniger Race-Conditions und der ganze Aufwand zur
   Kommunikation mit der Datenbank fällt jetzt weg. Ich habe jetzt nur noch eine kleine Datenbank,
   welche die Spielerstatistiken und -einstellungen speichert. Das muss ich nur noch selten updaten
   und auch hierfür ist der Aufwand gering.
4. Der Code auf dem Server ist extrem modular, austauschbar und lässt sich einfach testen. Durch den
   Wegfall der Datenbank lässt sich hier vieles optimieren und vereinfachen.
5. Ich kann den Nutzer jetzt eine WebSocket Verbindung in die Hand geben. Dadurch geschieht nicht
   nur die Kommunikation viel einfacher, sondern auch schneller. Jetzt kann der Server einfach
   sagen, wenn was los ist und muss nicht warten bis der Nutzer sich endlich mal meldet (Poll
   Verfahren).
6. Das Ganze wird durch meinen [eigenen Webserver](https://github.com/Garados007/MaxLib.WebServer)
   gehostet, der eine direkte Integration des Codes erlaubt und auch kleiner ist.
7. Die neue Oberfläche ist zwar auch in Elm geschrieben, aber hat ein komplett neues Redisign
   erhalten. Ich habe nun andere Prämissen und auch das System funktioniert jetzt anders. Von daher
   sieht jetzt alles übersichtlicher und schlanker aus.
8. Das Anmeldesystem ist jetzt ausgetauscht. Vorher musste man auf meiner Webseite einen Account
   anlegen. Jetzt erstellt man einfach in Discord eine Lobby und hat dann Zugriff.

## Was ist jetzt nun geplant?

Das aktuelle System ist gut - nur hats eine kleine Schwachstelle: Der Server ist alles in einem.
Nicht wirklich skalierbar. Dies möchte ich nun beheben und den Server dadurch in seine Teilgebiete
aufteilen:

- **User Account Server**: Es gibt prinzipiell nur eine Instanz von diesem. Der verwaltet die
  Nutzerstatistik und -einstellungen. Er ist außerdem nur von den anderen Backendservern erreichbar.
- **Game Server**: Hier geschieht die Magie. Von diesen kann ich so viele erstellen, wie ich derzeit
  brauche. Der Game Server verwaltet aktive Spielsitzungen und kommuniziert über WebSocket mit dem
  Spieler.
- **Multiplex Server**: Der fasst mehrere Game Server zusammen und bietet eine einfache Api. Dieser
  erlaubt mir somit mehrere Game Server transparent als einen zu verwalten. Er aggiert zusätzlich
  noch als Load Balancer.
- **Game Api**: Hierüber ist es möglich Spiele zu erstellen und zu verwalten. Dies ist primär dafür
  gedacht, damit ich weiterhin auch über Discord Spiele erstellen, beitreten oder die Statistik
  einsehen kann. In Zukunft werden weitere Schnittstellen geplant.

Außerdem ist ein großer Teil der Serverlogik austauschbar. Somit sind gleich mehrere Spielsysteme
möglich. Geplant sind derzeit das Hauptspiel von Werwolf und Avalon the Resitance. Außerdem kann die
Oberflächensprache ausgewechselt werden, was zusätzliche Themes erlaubt, bei denen einfach die
Rollen und Aktionen anders heißen als gewohnt.

Wie es nun weitergeht werde ich in zukünftigen Blogposts schreiben. Ich werde mich aber weniger mit
den Implementierungsdetails befassen (dafür gibt es ein öffentliches Git Repository), sondern mehr
mit den Status und den Konzepten dahinter.

Hier noch einmal alle wichtigen Links:

- [altes Projekt](https://github.com/Garados007/Werwolf)
- [1 Monat Rewrite](https://github.com/Garados007/Mabron.DiscordBots)
- [neues Projekt](https://github.com/Garados007/Werewolf)
