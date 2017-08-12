$fn = 100;
include <part-lib.scad>;

module YFixedBearingBracket(){
    difference(){
        union(){
            cube([72, 50, 20]);
            translate([47, 50, 0]) cube([25, 10, 20]);
            translate([47, -10, 0]) cube([25, 10, 20]);
            translate([72, 50, 20]) rotate([-90, 0, -90]) TSlotGuide(50, 1);
        }
        
        translate([32, 25, 6.9999]) rotate([0, -90, 0]) SupportLeadScrewBushing();
        translate([25, -5, 10]) rotate([0, 90, 0]) cylinder(d = 5, h = 60);
        translate([25, 55, 10]) rotate([0, 90, 0]) cylinder(d = 5, h = 60);
    }
}

YFixedBearingBracket();