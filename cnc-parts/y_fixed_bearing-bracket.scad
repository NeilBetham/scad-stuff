$fn = 100;
include <part-lib.scad>;

module YFixedBearingBracket(){
    difference(){
        union(){
            cube([72, 50, 42]);
            translate([47, 50, 0]) cube([25, 10, 40]);
            translate([47, -10, 0]) cube([25, 10, 40]);
            translate([72, 50, 40]) rotate([-90, 0, -90]) TSlotGuide(50, 2);
        }
        
        translate([32, 25, 34]) rotate([0, -90, 0]) FixedLeadScrewBushing();
        
        translate([25, -5, 10]) rotate([0, 90, 0]) cylinder(d = 5, h = 60);
        translate([25, -5, 30]) rotate([0, 90, 0]) cylinder(d = 5, h = 60);
        
        translate([25, 55, 10]) rotate([0, 90, 0]) cylinder(d = 5, h = 60);
        translate([25, 55, 30]) rotate([0, 90, 0]) cylinder(d = 5, h = 60);
        
        
        
        translate([-10, 25, 10]) rotate([0, 90, 0]) cylinder(d = 5, h = 100);
        translate([-10, 25, 10]) rotate([0, 90, 0]) cylinder(d = 10, h = 57);
    }
}

YFixedBearingBracket();