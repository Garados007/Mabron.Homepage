+++
title = "Frohes Neues Jahr 2023"
date = 2023-01-14T19:44:00
weight=140
[taxonomies]
tags=["blog"]
authors=["Max Brauer"]
+++

# Frohes Neues Jahr

Frohes Neues Jahr und ich hoffe ihr habt einen guten Rutsch gehabt. Bei mir am Blog hat sich auch
etwas getan. Unter anderem gibt es jetzt eine Kommentarspalte und neue Autoren.

<!--more-->

## Neue Kommentarspalte

Es gibt jetzt nun endlich eine Kommentarspalte. Diese stand schon sehr lange auf meiner Todo-Liste
für diese Webseite. Es gibt zwar hierfür schon professionelle Anbieter wie Disqus, die einem alles
fertig anbieten, aber ich habe mich dagegen entschieden, da ich nicht möchte, dass die Daten meiner
Leser bei denen gespeichert werden.

Also habe ich mich nach Alternativen umgeschaut und unter vielen Möglichkeiten für
[Remark42](https://remark42.com/) entschieden. Diese ist Open Source und ich darf die Daten selbst
hosten. Außerdem bietet mir das im Vergleich zu anderen Lösungen eine sehr große Funktionspalette
an. Dies ist erst einmal testweise eingebaut und ich schaue mal, ob es Probleme gibt und wie es
angenommen wird.

Theoretisch erlaubt die Kommentarspalte, dass ihr euch auch anmelden könnt. Derzeit funktioniert nur
Telegram zuverlässig. Google wurde für Tester aktiviert, aber dafür muss ich das Projekt noch von
denen prüfen lassen, damit das alle nutzen können. Das mache ich, wenn ich mit Remark42 zufrieden
bin. Es gibt noch andere Anbieter, aber bei denen habe ich entweder selbst kein Account (z.B.
Facebook), die sind nur aufwändig oder monetär umsetzbar (z.B. Microsoft) oder wird schlichtweg
nicht unterstützt. Leider können wir unseren eigenen OAuth-Service über keycloak noch nicht
einbinden, aber ich werde da mal schauen, dass ich das in Zukunft irgendwie hinbekomme.

Alternativ, was auch derzeit schon geht, könnt ihr auch gern anonym kommentieren.

## Neue Autoren

Des weiteren werdet ihr jetzt oben immer sehen wer gerade den aktuellen Blogbeitrag verfasst hat.
Bis jetzt werde das immer ich - Max Brauer - sein. Das hat den Grund, dass einer meiner Freunde (er
nennt sich `R`) hier gerne mitmischen möchte, also habe ich ihn angeboten das hier zu tun. So kommt
zum einen hier mehr Leben rein und zum anderen muss ich keine zweite Infrastruktur aufbauen.

Ihr werdet schon sehen, wann sein erster Beitrag kommt und über welche Themen er schreibt. Ich bin
schon selbst gespannt.

{{ remark_comments() }}
