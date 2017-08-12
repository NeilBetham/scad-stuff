$fn = 100;
include <part-lib.scad>

module XSupportBearingBracket(){
    difference(){
        union(){
            cube([60, 50, 40]);
            translate([20, 0, 40]) rotate([90, 90, 0]) TSlotGuide(40, 2);
        }
        
        translate([30, 25.75, 33]) rotate([0, -90, 0]) FixedLeadScrewBushing();
        
        translate([30, -20, 9]) rotate([-90, 0, 0]) cylinder(d = 5.6, h = 100);
        translate([30, 10, 9]) rotate([-90, 0, 0]) cylinder(d = 10, h = 100);
    }
}

XSupportBearingBracket();