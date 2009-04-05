#!/usr/bin/env sh

mkdir "$(dirname $0)/menus"
# Grabs PDF and make XML

# DLG
curl http://www.housing.ucsb.edu/dining/menu/dlg/ThisWeekMenu.pdf -o "$(dirname $0)/menus/this_week_dlg.pdf"
curl http://www.housing.ucsb.edu/dining/menu/dlg/NextWeekMenu.pdf -o "$(dirname $0)/menus/next_week_dlg.pdf"

# Ortega
curl http://www.housing.ucsb.edu/dining/menu/ortega/ThisWeekMenu.pdf -o "$(dirname $0)/menus/this_week_ortega.pdf"
curl http://www.housing.ucsb.edu/dining/menu/ortega/NextWeekMenu.pdf -o "$(dirname $0)/menus/next_week_ortega.pdf"

# Portola
curl http://www.housing.ucsb.edu/dining/menu/portola/ThisWeekMenu.pdf -o "$(dirname $0)/menus/this_week_portola.pdf"
curl http://www.housing.ucsb.edu/dining/menu/portola/NextWeekMenu.pdf -o "$(dirname $0)/menus/next_week_portola.pdf"

# Carillo
curl http://www.housing.ucsb.edu/dining/menu/carrillo/ThisWeekMenu.pdf -o "$(dirname $0)/menus/this_week_carrillo.pdf"
curl http://www.housing.ucsb.edu/dining/menu/carrillo/NextWeekMenu.pdf -o "$(dirname $0)/menus/next_week_carrillo.pdf"

for i in menus/*.pdf; do
	echo $i
	$HOME/bin/pdftohtml $i -i -xml
	rm $i
done