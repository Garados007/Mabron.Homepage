+++
title = "IP Konfiguration"
weight = 0
date = 2020-12-10T13:57:01Z
[taxonomies]
tags=["wg", "ip"]
+++

# Netzwerkkonfiguration für die WG am Rosengarten

## IPv4 Konfigurationstabelle

In dieser Tabelle sind alle reservierten IP Adressen innerhalb unseres Netzwerkes definiert. Dies gilt **nur** für IP der Version 4. Für IPv6 Adressen lassen sich keine Reservierungen vornehmen.

| Adresse | Besitzer | Gerät | MAC Adresse | Funktionen |
|-|-|-|-|-|
| `10.8.0.0` - `10.8.0.255` | Max | OpenVPN Adressbereich | | |
| `10.8.0.1` | Max | OpenVPN Gateway | | |
| `192.168.0.0` - `192.168.0.255` | - | Heimat Adressbereich | | |
| `192.168.0.1` | Max | Router: Hauptrouter Telecom | `50:68:0A:BC:45:A8`, `50:68:0A:BC:45:AC` | WIFI, Gateway |
| `192.168.0.2` | Robin | Router: Flurrouter | `a4-2b-b0-c9-b8-ca` | WIFI |
| `192.168.0.5` | Chufeng | Router: Flurrouter | `0e-41-58-00-77-6e` | WIFI |
| `192.168.0.6` | Max | Router: privater Router | `c4-e9-84-6d-7d-3e` | |
| `192.168.0.7` | Nanyi | Router: privater Router | `0e-41-58-00-8f-cd` | WIFI |
| `192.168.0.8` | ? | ? | | |
| `192.168.0.9` | Max | Switch: Backbone | | |
| `192.168.0.10` | Max | Server: Netbox server | `00-19-99-cd-74-d3` | |
| `192.168.0.11` | Max | Server: Rasberry PI 3 B | `b8-27-eb-34-67-7e` | DHCP, DNS, PiHole, OpenVPN, ... |
| `192.168.0.12` | Max | SteamLink | | Steam |
| `192.168.0.13` | Robin | TV: Wohnzimmer | | |
| `192.168.0.50` | Max | PC: Desktop DESKTOP-2TRU7OE | `2C-56-DC-3C-BB-C0` | |
| `192.168.0.51` | Max | PC: Laptop PCMAX | | |
| `192.168.0.52` | Max | Tool: Steam Link | | Steam Link |
| `192.168.0.53` | Chufeng | PC: Laptop | | |
| `192.168.0.54` | Robin | PC: Laptop | `94-53-30-91-3f-15` | |
| `192.168.0.70` | Max | Handy: S5 Mini | `c8-38-70-2a-1a-03` | |
| `192.168.0.71` | Max | Handy: Honor | `24-09-95-b7-d9-96` | |
| `192.168.0.75` | Robin | Robin, Huawai | `88:28:b3:9d:e4:e3` | |
| `192.168.0.80` | Zinai | Laptop | `8a-59-13-d5-aa-d1` | |
| `192.168.0.85` | Nanyi | iPad | `4c-56-9d-64-4f-6b` | |
| `192.168.0.86` | Nanyi | iPhone | `d4-61-da-10-6d-34` | |
| `192.168.0.87` | Nanyi | MacBook Pro | `8c-85-90-b5-4a-da` | |
| `192.168.0.88` | ? | ?, Liteon (last: 2020-05-24) | `2c-d0-5a-ec-d5-ee` | |
| `192.168.0.89` | Nanyi | iPhone 2 | | |
| `192.168.0.90` - `192.168.0.99` | Robin | Adressbereich unter Robins Verwaltung | | |
| `192.168.0.90` | Robin | ? | `94-53-30-91-3f-15` | |
| `192.168.0.92` | Robin | ? | `54:ab:3a:f8:25:a7` | |
| `192.168.0.95` | Robin | Raspberry PI | `b8:27:eb:14:14:6f` | |
| `192.168.0.96` | Robin | Raspberry PI | `b8:27:eb:41:41:3a` | |
| `192.168.0.97` | Robin | PC: Desktop | | |
| `192.168.0.98` | Robin | ? | `90-21-81-63-91-ab` | |
| `192.168.0.99` | Robin | ? | `cc-73-14-5f-f5-c3` | |
| `192.168.0.100` - `192.168.0.200` | - | Dynamische IPs per DHCP | | |
| `192.168.0.201` | ? | ? | `04-8c-9a-da-9c-07`, `14-9d-09-44-f3-43` | |
| `192.168.0.255` | - | Netzwerk Broadcast Adresse | | |

IP Adressen lassen sich alle bei Max reservieren. Nicht mehr genutzte IP Adressen sollen wieder freigegeben werden.

### Unbekannte IPs

Nicht registrierte IPs, welche sich im fixen Adressbereich befinden sind hier aufgelistet. Bitte registriert diese, damit leichter zuordbar ist, wer für dieses Gerät verantwortlich ist.

Es wird dringend davon abgeraten sich selbst eine IP zuzuweisen und keine eigens dafür registrierte IPs zu nehmen. Dies macht die Verwaltung der bestehenden IPs schwieriger und kann auch zu Kollisionen und Datenverlust führen. 

| IP | MAC | Zuletzt gesehen (\*) |
|-|-|-|
| `192.168.0.88` | `2c-d0-5a-ec-d5-ee` | 24.05.2020 |
| `192.168.0.201` | `04-8c-9a-da-9c-07` | 26.06.2020 |

*(\*) Ich überprüfe die IPs nur ab und zu und trage hier die Anomalien ein.*

## Netzwerkeinstellungen

Folgende Einstellungen gelten in unserem Netzwerk:

| Option | Wert |
|-|-|
| IP4 Adresse | *wird oben reserviert oder per DHCP automatisch vergeben* |
| Gateway | `192.168.0.1` |
| Netzmaske | `255.255.255.0` oder `/24` |
| DNS Server 1 | `192.168.0.11` |
| DNS Server 2 | `217.237.149.205` (Telecom), `8.8.8.8` (Google), `4.4.4.4` (Cloudflare), ... |

### Windows

Neben der normalen Methode mit den Einstellungsmenü gibt es auch eine, welche nur die Konsole nutzt. Dazu startet man eine Konsole als Administrator und macht dann folgendes:

1. Herausfinden des Namens der Schnittstelle:

```cmd
netsh interface ipv4 show config
```

![example](https://www.howtogeek.com/wp-content/uploads/2016/10/icp_1-650x368.png.pagespeed.ce.xAeBFPAu9e.png)

2. Einstellen der IP Adresse

```cmd
netsh interface ipv4 set address name="<Adapter Name>" static <IP> 255.255.255.0 192.168.0.1
```

Beispiel:

```cmd
netsh interface ipv4 set address name="Wi-Fi" static 192.168.0.0 255.255.255.0. 192.168.0.1
```

## Ports 

Aus Sicherheitsgründen wird die Liste der offenen Ports nicht im Internet veröffentlicht. Wer Einsicht haben möchte, kann sich bitte an Max wenden. Jedem steht es frei sich Ports zu reservieren, sofern diese noch frei sind und nicht eine sinnvolle Anzahl überschreitet. Ziel ist es möglichst wenige Ports offen zu haben.

## Dienste

Eine Liste unserer Dienste erhaltet ihr [hier](@/wg/dienste.md).

## IPv6

Wir unterstützen IPv6. Laut unserem DNS Bericht sind sogar 47,1% aller DNS Anfragen auf IPv6 bezogen.

Leider können wir immer noch nicht vollends auf IPv6 setzen, da ein Teil unserer lokalen Architektur auf IPv4 setzt. Es ist zwar möglich komplett ohne IPv4 zu operieren, führt aber auf Dauer zu starken Einschränkungen. Dies betrifft unter anderem auch die DNS Dienste im Allgemeinen. Von daher sind wir immer noch darauf angewiesen beides parallel zu nutzen.

In Zukunft planen wir komplett IPv6 zu unterstützen, so dass IPv4 nicht mehr benötigt wird. Dadurch fallen auch [Probleme](@/wg/probleme.md) mit dem DHCP weg. Außerdem müssen nicht mehr die begrenzten IPv4 Adressen reserviert werden.

Denoch werden wir IPv4 nicht komplett abschaffen können, da ein paar Funktionen (u.a. im Hauptrouter) sich nur mit IPv4 einstellen lassen. Ob hier irgendwann Updates erscheinen ist fraglich.

Auch im IPv6 werden wir einen NAT im Hauptrouter haben, von daher ist kein direkter Zugriff auf das unser Privatnetzwerk möglich. Nur mit der bekannten Portfreischaltung lässt sich hier etwas realisieren.
