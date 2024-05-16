# KAMO.Magazin Artikel 04/2024

Grundsätzlich 2 getrennte Artikel:
 - Vorstellung der CAuDri-Challenge
 - Team KITcar und die Umsetzung der CAuDri Disziplinen

Vermutlich ca. 2 Seiten zu CAuDri selbst und 3-4 Seiten zu KITcar, können wir aber noch nicht genau sagen.
Der CAuDri Artikel wird sehr allgemein gehalten, der KITcar Teil kann auch mal in technische Details gehen.

## Artikel 1 - CAuDri-Challenge

### Einleitung
- autonomes Fahren wird immer relevanter
- aktueller Stand der Forschung/Etablierung
- Erprobung neuer Technologien mit Hilfe von Modellfahrzeugen

### Geschichte
- Relevanz studentischer Projekte
  - haben frühzeitig die Entwicklung autonomer Fahrzeuge gefördert (z.B. DARPA Grand Challenge)
  - Risikofreie Entwicklung ohne kommerziellen Hintergrund
  - Kompetitivität bietet Anreize
- Carolo-Cup (unklar, ob wir den CC erwähnen sollen)
  - prominenter deutscher Hochschulwettbewerb seit 2006
  - viele verschiedene Teilnehmer über die letzten 15 Jahre
  - viele Industriepartnerschaften
  - Ende 2022
- Gründung CAuDri-Challenge
  - ehemalige Carolo-Cup Teams (Stuttgart, Ulm, Karlsruhe)
  - (baut inhaltlich auf Carolo-Cup auf)
  
### Allgemein
- studentischer Hochschulwettbewerb
- 2023 zum ersten Mal in Stuttgart stattgefunden
- Teilnehmer entwickeln 1:10 Fahrzeug
- treten in verschiedenen Disziplinen an

### Disziplinen
- Teams treten in zwei Disziplinen and und sammeln Punkte
#### Freedrive (ggf. anderer Name)
- Simuliert Außerorts
- Fahrbahn ohne Hindernisse
- Kreuzungen und Fahrbahnmarkierungen
- Parkbuchten
- Ziel: Größte Distanz bei festgelegter Zeit
- Zusätzliche Punkte durch erfolgreiches Parken

#### Obstacle Avoidance (ggf. anderer Name)
- Innenstadtszenario
- Zusätzliche Herausforderungen
  - Straßenschilder 
  - Geschwindigkeitsbegrenzungen
  - statische Hindernisse
  - dynamische Hindernisse wie Fußgänger
  - Vorfahrtsregeln und Abbiegen
- Strafen für Missachtungen
- Ziel: Größte Distanz und erfolgreiche Herausforderungen

### Hardware
- Teams entwickeln eigene Fahrzeuge 
- kaum Hardwarevorgaben 
- Einschränkungen: Größe und allgemeine Bauform 
- Alleinstellungsmerkmal der CAuDri-Challenge
- [Bilder der Fahrzeuge vom letzten Jahr]

### Beispielhafte Problemstellungen
Hier würde ich beispielhaft erläutern, wie eine Herausforderung aussehen kann, die sich durch die CAuDri-Challenge ergibt. Sowas wie:
 - Das Fahrzeug muss möglichst schnell durch Kurven fahren können und dabei auftretenden Hindernissen ausweichen
   - Beginnt mit der Hardware
     - Entwicklung des Antriebs
     - Sinnvolle Wahl der Komponenten, wie Sensoren
     - Ausreichende Stabilität in Kurven
   - Wahrnehmnung der Umwelt
     - Erkennen der Kurve
     - Erkennen der Hindernisse (Machine Learning)
   - Ausreichend schnelle Datenverarbeitung
   - Festlegen der Maximalgeschwindigkeit 
   - Pfadplanung
   - Folgen des ermittlten Pfades

Andere Beispiele, die man erwähnen könnte:
- Fahrzeug muss stabil und sicher auch bei hohen Geschwindigkeiten fahren
- Erkennung der Fahrbahn und Spur halten
- Parklücken finden und einparken
- Erkennung von Hindernissen, Ausweichen
- Wahrnehmung anderer Verkehrsteilnehmer und Vorfahrtsregeln
- Erkennung von Straßenschildern

### Anreize
- Bieten Plattform um Fahrzeuge/neue Ideen auszutesten
- Praxiserfahrung
- verschiedenste Disziplinen
  - Fahrzeugtechnik
  - Antriebstechnik
  - Elektrotechnik
  - Embedded Systems
  - Robotik, ROS
  - Machine Learning
  - Regelungstechnik
  - Informatik
  - etc.
- Kontakte zu Industrie
- Networking zwischen Hochschulen

### Zukunft
- Mehr Gewicht auf aktuelle Forschungsfragen
  - Connected Driving, V2V, V2x
  - Sicherheit gewährleisten
  - Umgang mit unbekannten/unerwarteten Szenarien
  - -> neue Disziplinen
- Derzeit Einstiegshürde sehr hoch
  - erfahrene Teams 
  - lange Entwicklungszeit für neue Teams
  - (alternative Wettbewerbe)
  - -> Software der Gewinnerteams open-source zur Verfügung stellen
  - -> Entwicklung einer Basisplattform (LARS) für neue Teams

### Abschluss
- Gemeinnütziger Verein (CAuDri e.V.)
- Mehr Infos auf Website/Discord 
- Werbung für CAuDri-Challenge 2024
  - 21.06. und 22.06.
  - DHBW Stuttgart
  - Besucher herzlich eingeladen (samstags)
  
Dann schmücken wir noch alles schön mit Fotos aus und ggf. den Vektorgrafiken der Fahrbahnen aus dem Regelwerk.

## Artikel 2 - KITcar

### Einleitung
- Bezug nehmen auf die CAuDri-Challenge
  - sind Teilnehmer 
  - haben 2023 den ersten Platz belegt
- Hochschulgruppe am KIT
  - eingetragener Verein seit 2012
  - zwischen 10 und 100 Mitgleider (aktuell 40?)
  - Institut MRT
- vertretene Studiengänge (Informatik, Mechatronik, Elektrotechnik)
- Vorteile für Mitglieder / warum KITcar
  - Faszination für Robotik und autonomes Fahren
  - Praxiserfahrung trotz theorielastigem Studium
  - Spaß an Zusammenarbeit, Kennelernen, Teambuilding
  - Möglichkeit zur Entfaltung, sich kreativ einbringen
  
### Geschichte
- Fahrzeuge
  - kurze Beschreibung, Bilderreihe
- Epochen

### Dr.Drift
- Geschichte
  - Entwicklung
  - Siege
- Buzzwords der Teams

### Subteams
Hier kommt jeweils ein Abschnitt unserer 5 Subteams:
- Hardware
- Regelung
- Navigation
- Perzeption
- Simulation

Hier geht jedes Subteam auf ihre spezielle Rolle im Team ein, welche Aufgaben und Herausforderungen gelöst werden müssen und wie diese technisch (an Dr. Drift) umgesetzt wurden.

Dabei wird auch immer Bezug genommen auf die Problemstellungen, die sich bei der CAuDri-Challenge ergeben. 
Z.B. müssen die Fahrzeuge dauerhaft auf der rechten Fahrspur fahren, darauf könnten die Subteams folgndermaßen eingehen:
- Perzeption: wie erkennen wir die Fahrbahn und ggf. vorkommende Hindernisse
- Navigation: wie ergibt sich dadurch ein optimaler Pfad, dem das Fahrzeug folgen soll
- Regelung: wie schaffen wir es, dem Pfad auch bei hohen Geschwindigkeiten zu folgen

Hier kann es auch etwas technischer werden, für die Veranschaulichung sollen aber auch viele Illustrationen und Grafiken verwendet werden.

### Miss Magic
- aktuelles Fahrzeug, welches sich noch in Entwicklung befindet
- kurz eingehen auf die Neuerungen
  - Antrieb 
  - Sensoren
  - ROS2

### Werbung 
- Interesse geweckt?
- KITcar eingetragener Verein
  - Mitlglied werden
  - Aufgaben/Vorteile
      - Kommentare/Zitate anderer Mitlgieder
      - Praxiserfahrung
      - Networking
- Teamfotots
