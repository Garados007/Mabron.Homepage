+++
title = "WG Info Center"
date = 2021-02-28T11:42:00
weight=280
[taxonomies]
tags=["mabron","blog","wg"]
+++

# WG Informations Center

In der Vergangenheit so wie jetzt auch habe ich das Netzwerk bei uns in der WG verwaltet. Irgendjemand musste es ja machen.

Dabei sind ein paar Dokumente wie Exceltabellen entstanden, die mir bei der Aufgabe helfen sollten. Das taten sie auch, aber zeitweise war das echt unpraktisch. Die Dokumente waren nicht schnell abzurufen und man musste immer extra ein Programm starten um sich das nur mal kurz anzusehen.

<!-- more -->

Von daher hatte ich am 16.01.2020 (noch bevor die Coronakriese bei uns hier los ging) das Ganze auf meine Homepage gepackt. Da ich nur einfache Dokumente haben wollte, wurde alles in Markdown geschrieben. Besonders die z.T. umfangreichen Tabellen ließen sich hier gut darstellen.

Damit man sich das auch noch ansehen kann, wurde ein in PHP geschriebener Markdownparser hinzugefügt, der alles in Echtzeit in HTML umwandelt und noch einen schönen Rahmen hinzufügt. So konnte man jederzeit den Zeitstempel der letzten Änderung und andere Spielereien sehen.

Dies war dann im Endeffekt der Grundstein für den Aufbau dieser Webseite (siehe [Blogpost vom 27.02.2021](@/blog/2021/02/2021-02-27_new_homepage/index.md)).

## Wie ist das Netzwerk aufgebaut

Im [WG Informations Center](@/wg/_index.md) kann man grob den Aufbau unseres Netzwerkes ableiten. Leider hat unsere Wohnung ein paar Nachteile, die den Aufbau eines Netzwerks erschweren:

- Wir haben dicke Stahlbetonwände, welche die Signale sehr gut schlucken. Das bedeutet nicht, dass der Empfang stark reduziert wird, sondern mehr gestört. Wir können manchmal noch im Erdgeschoss einen Balken bekommen, aber da ist schon gar nichts mehr.
- Es gibt zwischen 12 und 15 Nachbarrouter und alle senden auf maximaler Leistung. Normalerweise bekommt man mit mittlerer oder niedriger Leistung eine gute Abdeckung in der Wohnung hin, aber alle haben ihre Router auf Defaulteinstellungen gelassen, was bedeutet, dass sie mit maximaler Power senden.
- Nachteil an den vielen Routern ist, dass unser Funknetz überlastet ist. Der 2,4 GHz Bereich hat 14 Kanäle, welche sich alle überlappen. Es wird empfohlen immer 3 Kanäle vom Nachbar entfernt zu sein - hier nicht möglich.

    *Eine Nutzung vom 5 GHz Bereich ist so leider nicht immer möglich, dazu sind leider nicht alle Geräte bereit.*


Die Lösung war dann, mehrere Access Points in der Wohnung zu verteilen und diese über LAN Kabel zu verbinden. Dazu habe ich um die 50m (summiert) und eine PowerLine verlegt und über verschiedene Router und Switchs verbunden.

Die Router waren Standard-Billigmodelle und wurden gebraucht rangeschafft, dementsprechend waren sie auch zu konfigurieren und "ausfallsicher".

Die meisten Probleme machte aber der Telekom-Hybrid-Router. An den waren dann alle Kabel angeschlossen und er hatte so einige Ausfälle, wo selbst die Servicemitarbeiter nicht weiter wussten. So mussten wir sehr früh an diesen die WLAN Funktion komplett abschalten (er kam mit der feindlichen Umgebung einfach nicht klar) und später auch noch einen separaten Switch vorschalten, welcher den internen Datenverkehr regelt. Sonst friert alles ein.

Und warum Telekom? Bei uns liegt nur eine steinzeitmäßige 6000er Kupferleitung an. Über LTE kommt man maximal auf eine 100.000er Leitung (Tests zeigen aber nur Spitzenwerte von 60.000 und durch Corona sind die Werte eh nochmal deutlich niedriger). Und bei der Telekom bekamen wir damals halt das Angebot, was uns das Meiste rausgab. Wir sind 5 junge Leute und dadurch ist der Verbrauch nicht gerade gering.

Zusammengefasst:
- Unser Internet ist *Sch\*\*\*e*, da die Verbindung nach außen langsam und teuer ist.
- Unser WLAN Netz funktioniert schlecht. Es ist stark gestört und langsam. Unsere Computer und Laptops sind alle über LAN Kabel verbunden.
- Die Technik ist alt und fällt regelmäßig aus.

## Würde ich später was anders machen?

Ja auf jeden Fall. Ich werde bei der nächsten Wohnung von vorherein schauen, wie das anliegende Internet ist und wie ich meine Kabel verlegen kann. Und dann werde ich auch gleich schauen, dass ich nicht wieder ausversehen ein CAT5 (und nicht CAT5e oder CAT6) Kabel irgendwo dazwischen schalte und es ewig nicht mitbekomme.

{{ remark_comments() }}
