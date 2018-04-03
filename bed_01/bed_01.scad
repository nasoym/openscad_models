
$fn=4;

lattenrost_laenge=197;
lattenrost_breite=90;
lattenrost_hoehe=10;
matratzen_hoehe=15;
sitz_hoehe=100;
balken_vertikal_breite=12;
balken_vertikal_tiefe=6;
balken_horizontal_hoehe=12;
balken_horizontal_tiefe=6;

module matratze() {
  translate([0,0,0]) cube([lattenrost_laenge,lattenrost_breite,lattenrost_hoehe]);
  translate([0,0,lattenrost_hoehe]) cube([lattenrost_laenge,lattenrost_breite,matratzen_hoehe]);
}

module seite_links() {
  translate([-6,-6,-5]) cube([12,6,100]);
  translate([lattenrost_laenge-12+6,-6,-5]) cube([12,6,100]);
  translate([6,-6,-5]) cube([lattenrost_laenge-(6+6),6,12]);
  translate([6,0,-4]) cube([lattenrost_laenge-(6+6),4,4]);
  translate([6,-6,100-12-5]) cube([lattenrost_laenge-(6+6),6,12]);
  translate([6,-4,7]) cube([lattenrost_laenge-(6+6),2,10]);
}

module explode() {
echo( $children);
  for (i=[0:1:$children-1])

   translate([i*20,0,i*2]) { 
		children(i); 
    echo( i);
	}
}

module seite_rechts() {
  translate([0,lattenrost_breite,0]) {
    translate([-6,0,-5]) cube([12,6,100]);
    translate([lattenrost_laenge-12+6,0,-5]) cube([12,6,100]);
    translate([6,0,-5]) cube([lattenrost_laenge-(6+6),6,12]);
    translate([6,0-4,-4]) cube([lattenrost_laenge-(6+6),4,4]);
    translate([6,0,7]) cube([lattenrost_laenge-(6+6),2,10]);
    translate([6,0,17]) cube([lattenrost_laenge-(6+6),10,2]);
    translate([6,0,100-12-5]) cube([lattenrost_laenge-(6+6),6,12]);
  }
}

module kopf_ende() {
  translate([-6,0,-5]) cube([6,lattenrost_breite,12]);
  translate([-6,0,100-12-5]) cube([6,lattenrost_breite,12]);
}

module fuss_ende() {
  translate([lattenrost_laenge,0,-5]) cube([6,lattenrost_breite,12]);
  translate([lattenrost_laenge,0,100-12-5]) cube([6,lattenrost_breite,12]);
}

* % matratze();
*seite_links();
/* explode() { */
  seite_rechts();
/* } */
*kopf_ende();
*fuss_ende();

