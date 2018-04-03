$fn=4;
//$fn=12;



//cube([1,1,1]);
// cube([1,1,1],center=true);

bedwidth=1.5;

//translate([2,0,0])
	//color([1,0,0])
	//rotate([45,0,0])

	//cube([195,80,10]);
  //cube([6,8,80]);
//linear_extrude(height=5)
//text("hello", size=20,font="SansSerif:style=Bold", halign="center", valign="center",$fn=6);
//# cube([5,20,5]);
//linear_extrude(height=5)
//circle(5);
//square(5);
//text("1",size=5);


//color([0,0,1],0.1) {
  * % cube([197,90,10]);
  // % translate([0,0,12]) cube([197,90,15]);
//}

// * translate([0,0,-8]) cube([197,6,8]);
//* translate([0,90-6,-8]) cube([197,6,8]);

//* translate([0,90,0]) cube([197,6,8]);
translate([-6,-6,-5]) cube([12,6,100]);
translate([197-12+6,-6,-5]) cube([12,6,100]);
translate([6,-6,-5]) cube([197-(6+6),6,12]);
//translate([12,-6,-5+12]) cube([197-(12+12),6,12]);
translate([6,0,-4]) cube([197-(6+6),4,4]);

translate([-6,90,-5]) cube([12,6,100]);
translate([197-12+6,90,-5]) cube([12,6,100]);
translate([6,90,-5]) cube([197-(6+6),6,12]);
translate([6,90-4,-4]) cube([197-(6+6),4,4]);


translate([-6,0,-5]) cube([6,90,12]);
translate([197,0,-5]) cube([6,90,12]);

translate([-6,0,100-12-5]) cube([6,90,12]);
translate([197,0,100-12-5]) cube([6,90,12]);
translate([6,90,100-12-5]) cube([197-(6+6),6,12]);
translate([6,-6,100-12-5]) cube([197-(6+6),6,12]);

translate([6,-4,7]) cube([197-(6+6),2,10]);
//translate([6,90,7]) cube([197-(6+6),6,12]);
translate([6,90,7]) cube([197-(6+6),2,10]);
translate([6,90,17]) cube([197-(6+6),10,2]);



