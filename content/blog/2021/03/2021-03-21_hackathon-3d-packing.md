+++
title = "Hackathon: 3D Packing"
date = 2021-03-21T21:40:00
updated = 2021-03-23T09:30:00
weight=211
[taxonomies]
tags=["blog","project","hackathon","relaxdays"]
authors=["Max Brauer"]
+++

# Hackathon Aufgabe: 3D Packing

Hier noch einmal die Aufgabenbeschreibung:

> Kunden kaufen auch gerne mal mehrere Produkte auf einmal. Diese Bestellungen sollten idealerweise
> mit möglichst geringen Versandkosten versendet werden. Die zu packenden Produkte sind Quader und
> müssen in quaderförmige Pakete gepackt werden. Artikel und Pakete können nicht gedreht werden.
>
> Mehrere Artikel können auch in ein einzelnes Paket gepackt werden, sofern sie sich nicht
> überschneiden. Instabile oder innerhalb eines Paketes "fliegende" Artikel sind erlaubt. Es wird
> nur getestet, ob die Artikel innerhalb des gewählten Pakets liegen und sich nicht überschneiden.
>
> **Gegeben**: Eine Menge von möglichen Paketen mit den korrespondierenden Versandkosten und eine
> Menge von zu verschickenden Artikeln.
>
> ```json
> {
>   "package_types":[
>     {"dimensions":[10,20,15],"cost":10},
>     {"dimensions":[10,10,10],"cost":5}
>   ],
>   "articles":[[10,10,5],[5,5,5],[9,4,5],[10,20,10],[10,10,10]]
> }
> ```
> 
> In diesem Fall haben wir 2 Paketsorten zur Auswahl und müssen 5 Artikel versenden. Bei den
> Paketsorten ist in `"dimensions"` jeweils eine x, eine y und eine z-Ausprägung angegeben. Außerdem
> sind die Versandkosten als `"cost"` gegeben. Bei den Artikeln sind jeweils x, y und z-Ausprägungen
> angegeben, die in mindestens eine Paketsorte passen.
>
> **Gesucht**: Aufteilung der Artikel auf die Pakete und Positionierung der Artikel innerhalb der
> Pakete. Das Optimierungsziel ist es, die insgesamten Versandkosten zu minimieren.
> 
> ```json
> {
>   "used_packages":[0,1,1],
>   "article_positions":[[2,0,0,0],[2,5,1,5],[2,1,6,5],[0,0,0,0],[1,0,0,0]]
> }
> ```
>
> Diese Rückgabe bedeuted, dass 1 Pakete der Paketsorte mit Index 0
> (`{"dimensions":[10,20,15],"cost":10}`) und 2 Pakete der Paketsorte mit Index 1
> (`{"dimensions":[10,10,10],"cost":5}`) versendet werden. Damit liegen die Kosten schonmal bei 10 +
> 5
> + 5 = 20.
>
> Danach werden die Positionen der 5 Artikel angegeben. Die Reihenfolge ist hier dieselbe wie in der
> Eingabe. Der erste Eintrag `[2,0,0,0]` bedeutet, dass im Paket mit Index 2 (aus den
> `"used_packages"`) der Artikel mit den Dimensionen `[10,10,5]` an die Position `(0,0,0)` gelegt
> wird. Der zweite Eintrag `[2,5,1,5]` bedeutet, dass im Paket mit Index 2 (aus den
> `"used_packages"`) der Artikel mit den Dimensionen `[5,5,5]` an die Position `(5,1,5)` gelegt
> wird. Der letzte Eintrag `[1,0,0,0]` bedeutet, dass im Paket mit Index 1 (aus den
> `"used_packages"`) der Artikel mit den Dimensionen `[10,10,10]` an die Position `(0,0,0)` gelegt
> wird.
>
> Paket 0 und 1 sind also Pakete, die jeweils nur einen Artikel enthalten. Eine Visualisierung von
> Paket 2 findet ihr neben dieser Aufgabe.

Wir haben dann zuerst über einen Algorithmus diskutiert und sind ziemlich schnell darauf gekommen,
dass die Aufgabe sehr schnell komplex wird und eine hohe Laufzeit bekommt. Wir haben uns dann für
folgende Lösung entschieden.

## Formalismus

Um die folgenden Formeln einfacher zu halten werden folgende Abkürzungen genutzt:

<table>
<thead>
<tr><th style="text-align:left;">Symbol</th><th style="text-align:left;">Bedeutung</th></tr>
</thead>
<tbody>
<tr><td>{{ katex(body="P") }}</td><td>Die Menge aller Pakettypen</td></tr>
<tr><td>{{ katex(body="m=|P|") }}</td><td>Anzahl aller Pakettypen</td></tr>
<tr><td>{{ katex(body="cost(i)") }}</td><td>Sind die Kosten für den 
    {{ katex(body="i") }}. Pakettyp.</td></tr>
<tr><td>{{ katex(body="dim_{p}(i)" )}}</td><td>Sind die Dimensionen für den
    {{ katex(body="i")}}. Pakettyp. Sie sind dann in der Form
    {{ katex(body="(x,y,z)")}}.</td></tr>
<tr><td>{{ katex(body="A") }}</td><td>Die Menge aller Artikel</td></tr>
<tr><td>{{ katex(body="n=|A|")}}</td><td>Anzahl aller Artikel</td></tr>
<tr><td>{{ katex(body="dim_{a}(j)")}}</td><td>Sind die Dimensionen für den
    {{ katex(body="j")}}. Artikel. Sie sind dann in der Form
    {{ katex(body="(x,y,z)")}}.</td></tr>
</tbody>
</table>

## 1. Artikel sortieren und prüfen

Wir haben für alle Artikel {{ katex(body="j") }} einen Score über die Standardabweichung der Dimensionen berechnet. Danach wurden diese nach dem Score absteigend sortiert.

{% katex(block=true) %}
\begin{align*}
      \mu &= \frac{x(dim_{a}(j)) + y(dim_{a}(j)) + z(dim_{a}(j))}{3} \\
score(j) &= |x(dim_{a}(j)) - \mu| + |y(dim_{a}(j)) - \mu| + |z(dim_{a}(j)) - \mu|
\end{align*}
{% end %}

Da wir für die Ausgabe auch wieder die originalen Positionen brauchen, haben wir das bei der
Sortierung berücksichtigt. Im folgenden gehen wir aber nur noch von der sortierten Reihenfolge aus.

Im gleichen Arbeitsschritt haben wir auch überprüft, ob es mindestens eine Verpackung gibt, welche
diesen Artikel aufnehmen kann. Falls dies nicht der Fall ist, so brechen wir ab und geben eine
Fehlermeldung aus.

{% katex(block=true) %}
\forall_{j} \exists_{i}:
    dim_{p}(i) \geq dim_{a}(j)
{% end %}

### Zweck

Wir beabsichtigen möglichst ungleichmäßig geformte Items zuerst einzusortieren. Eine Statistik, ob
diese Heuristik sehr effektiv ist, haben wir noch nicht. Auf jeden Fall scheint es für ein
angemessenes Maß zu sein.

## 2. Verpackungstypen sortieren

Die Verpackungen haben wir dann aufsteigend nach deren Kosten pro Volumen sortiert:

{% katex(block=true) %}
\begin {align*}
volume(i) &= x(dim_{p}(i)) * y(dim_{p}(i)) * z(dim_{p}(i)) \\
 score(i) &= cost(i) / volume(i)
\end{align*}
{% end %}

### Zweck

Wir werden später möglichst die erste Verpackung aus der Liste nehmen, um daran weiter zu arbeiten.
Wir nehmen dann die Box, welche uns das größte Volumen für weniger Geld anbietet. Durch das Volumen
können wir aber nicht garantieren, ob überhaupt noch Artikel reinpassen oder ob wir zu viel Freiraum
lassen. Um dieses Problem kümmern wir uns später.

## 3. Verpackung heraussuchen

Als nächstes nehmen wir uns den ersten noch unbenutzten Artikel aus der Liste. Dazu suchen wir den
ersten Verpackungstyp, welcher den Artikel aufnehmen kann. Durch unsere Vorverarbeitung können wir
garantieren, dass es auch eine Verpackung dafür gibt.

Wir legen dann dafür ein Paket in einer globalen Liste an und packen den Gegenstand an den
Koordinaten {{ katex(body="(0,0,0)") }}. Danach generieren wir uns die noch 6 möglichen
Kombinationen an Unterräumen.

Wenn wir einen Artikel an die Koordinate {{ katex(body="(0,0,0)")}} einsortieren und der Artikel
kleiner als die Verpackung ist, so bleibt in den restlichen Koordinaten Luft übrig. Diesen Freiraum
können wir in 3 Quader aufteilen. Unter der Annahme, dass der Artikel die Größe
    {{katex(body="(a_{x}, a_{y}, a_{z})")}} und die Verpackung die Größe
    {{katex(body="(p_{x},p_{y},p_{z})")}} hat, so erhält man folgende Positionen-Größen-Paare für
die Unterräume, wenn man zuerst nach der x-Achse und dann der y-Achse aufteilt:

- {{ katex(body="((a_{x}, 0, 0), (p_{x}-a_{x}, p_{y}, p_{z}))") }}
- {{ katex(body="((0, a_{y}, 0), (a_{x}, p_{y}-a_{y}, p_{z}))") }}
- {{ katex(body="((0, 0, a_{z}), (a_{x}, a_{y}, p_{z}-a_{z}))") }}

Dies ist aber nur für eine Möglichkeit der Aufteilung. Die anderen Möglichkeiten erhält man, indem
man die Achsen in einer anderen Reihenfolge aufteilt. Wir haben da einen Trick ausgenutzt, indem wir
die Koordinatenachsen bei der Berechnung einfach austauschten und so mussten wir die oben stehende
Formel nur für einen Fall erstellen (dies ersparte uns eine Menge debugging Arbeit).

Unterräume, welche nur noch ein Volumen von 0 hatten, hatten wir dann aus jeder Möglichkeit entfernt
(dies würde uns dann sonst die kommende Berechnung erschweren).

Für die Auswahl welche Aufteilungsvariante wir dann nehmen, ermitteln wir für jede Variante einen
Score und wählen davon die mit dem höchsten:

{% katex(block=true) %}
\begin {align*}
dim(k) & \dots \text{Größe der $k$. Partition} \\
\mu &= \frac{\sum_{k} x(dim(k)) + y(dim(k)) + z(dim(k))}{\sum_{k} 3} \\
score &= \sum_{k} |\mu - x(dim(k))| + |\mu - y(dim(k))| + |\mu - z(dim(k))|
\end {align*}
{% end %}

Nachdem wir uns eine Aufteilungsmöglichkeit ausgesucht haben, werden die Unterräume mit den
jeweiligen Offsets zum Gesammtpaket in eine Queue abgelegt.

### Heuristik der Auswahl des Unterraumes

Wir haben uns dafür entschieden die Aufteilungsmöglichkeit mit der größten Standardabweichung zu
nutzen. Dadurch haben wir möglichst ungleich große Unterräume und schaffen es noch so eine große
Palette an Artikeln in das Paket einzusortieren.

Die andere Alternative wäre noch das mit der möglichst kleinsten Standardabweichung zu nutzen, das
hätte aber dafür gesorgt, dass wir sehr schnell die kleinen Artikel aufbrauchen werden und nur noch
mittlere bis größere Artikel übrig haben. Das würde auch zur Folge haben, dass wir spätere Pakete
nicht mehr wirklich voll bekommen - was wir ja nicht wollen.

Von daher haben wir uns für diese Heuristik entschieden, damit wir alle Artikel möglichst
gleichmäßig aufteilen.

## 4. Unterräume abarbeiten

Danach gehen wir die einzelnen Unterräume aus der Queue durch und suchen uns da jeweils den ersten
Artikel, welche noch in den Unterraum reinpasst. Dieser wird dann wieder zum Paket hinzugefügt und
neue Unterräume werden wie in [3.](#3-verpackung-heraussuchen) beschrieben erstellt und zur Queue
hinzugefügt.

Das Ganze wird so lange betrieben, bis der Unterraum so klein ist, dass kein Artikel mehr reinpasst.
Dann wird der Unterraum einfach beendet und es geht so weiter.

## 5. Paket neu verpacken

Nachdem **alle** Unterräume von einen Paket verarbeitet und Artikel hinzugefügt wurden, geht es in
den nächsten Schritt der potentiellen Volumenminimierung und Kostenreduzierung. Dies mach vor allem
am Ende der Laufzeit viel Sinn, da man für etwas über halb volle Pakete bestimmt noch einen
kleineren Pakettyp findet, der zwar höhere Kosten pro Volumen hat, aber für den Fall doch die
günstigere Wahl ist.

Von daher nehmen wir uns die Liste aller Pakettypen, dessen Kosten und Volumen **echt kleiner** als
des aktuell gewählten Pakettyps und das Volumen aber **größer oder gleich** der Summe aller Artikel
in dem Paket ist.

Für jeden dieser Pakettypen gehen wir die [Schritte 3](#3-verpackung-heraussuchen) und
[4](#4-unterraume-abarbeiten) durch und schauen, ob **alle** gewählten Artikel in diesen Pakettyp
einsortiert werden können.

Von allen Kandidaten, die Erfolg hatten, wird der mit den **kleinsten** Kosten gewählt. Falls es
keinen Kandidaten gab, so wird die originale Verpackung genutzt.

Wenn das Paket danach beendet ist, wird dann gleich mit [Schritt 3](#3-verpackung-heraussuchen)
fortgesetzt. So lange bis alle Artikel einsortiert sind.

### Abschätzung

Wir gehen davon aus, dass es nur wenige Pakettypen gibt, weshalb nur wenige Möglichkeiten überprüft
werden müssen. Außerdem ist es für den Anfang sehr wahrscheinlich, dass die Pakete so voll sind,
dass einfach kein anderer Pakettyp mehr passt. Wir haben das mit sehr großen zufälligen Instanzen
getestet und konnten keine großen Performanceeinbuße feststellen. Stattdessen steigt die Güte der
Lösung enorm.

## Parallelisierung

Da wir kein Backtracking nutzen und nur einen globalen Zustand haben, welcher nicht zurückgesetzt
werden muss, kann hier vieles sehr gut parallelisiert werden.

In unserer Lösung verarbeiten wir die Unterregionen parallel, wobei jede Unterregion ein Artikel von
anderen Unterregionen "klauen" kann. Das heißt: Wer zuerst kommt, mahlt zu erst und nimmt sich
einfach den ersten Artikel, der passt.

Außerdem verpacken wir mehrere Pakete gleichzeitig. Dies machen wir aber nur solange, wie noch sehr
viele Artikel noch übrig sind. Je weniger Artikel noch übrig sind, desto weniger Pakete dürfen
gleichzeitig gepackt werden.

In unserer Lösung haben wir uns auf die Zahl 50 geeinigt. Sobald nur noch weniger als 50 Artikel
übrig sind, darf nur noch ein Paket gleichzeitig gepackt werden. Welcher Wert die besten Ergebnisse
liefert müsste noch genauer erforscht werden.

Für die parallele Verarbeitung erstellen wir die Anzahl an Prozessoren an Tasks.

### Artikel-Liste

Für unsere Artikelliste haben wir eine speziele Implementierung erstellt, bei der wir gleichzeitig in mehreren Tasks über die Liste ohne Sperren iterieren können. 

Jeder Task schaut sich die Artikel nacheinander an. Sobald man einen Artikel gefunden hat, versucht
man sich den Artikel zu reservieren, indem man in einer atomaren Operation einen Wert schreibt. Dann
wird geschaut, ob man auch wirklich derjenige war, der den Wert für den Artikel schreiben konnte.
Falls dem so ist, hat man ein Artikel erfolgreich reservieren können. Wenn nicht, wird
weitergesucht.

## Ausgabe

Für die Vorbereitung der Ausgabe suchen wir dann nur noch die originale Reihenfolge der Artikel
heraus und in welche Verpackungen die einsortiert wurden. Dieser Vorgang ist eigentlich relativ
trivial. Dann geben wir nur noch alles aus.

## Geschwindigkeit

Wir nutzen für unsere Lösung hauptsächlich nur Heuristiken. Wir haben alles nach einen Score
vorsortiert und nehmen bei jeder Aufteilungsmöglichkeit immer nur den mit den besten Score. Wir
probieren gar nicht erst die anderen Möglichkeiten aus.

Einzig allein beim Neuverpacken machen wir eine Ausnahme und schauen uns die wenigen Möglichkeiten
anderer Verpackungen an, welche wahrscheinlich noch ein besseres Ergebnis liefern.

Außerdem ist alles bei uns parallelisiert und wird gleichzeitig verarbeitet. Bei Prozessoren mit
mehreren Kernen können wir da viel rausholen.

{{ remark_comments() }}
