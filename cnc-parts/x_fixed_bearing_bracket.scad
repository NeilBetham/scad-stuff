$fn = 100;
include <part-lib.scad>

module XFixedBearingBracket(){
    difference(){
        union(){
            cube([60, 50, 57]);
            translate([0, 0, 57]) rotate([90, 90, 0]) TSlotGuide(57, 2);
        }
        
        translate([30, 25.75, 50]) rotate([0, -90, 0]) FixedLeadScrewBushing();
        
        translate([10, -20, 9]) rotate([-90, 0, 0]) cylinder(d = 5.6, h = 100);
        translate([10, 4, 9]) rotate([-90, 0, 0]) cylinder(d = 10, h = 100);
        
        translate([30, -20, 9]) rotate([-90, 0, 0]) cylinder(d = 5.6, h = 100);
        translate([30, 10, 9]) rotate([-90, 0, 0]) cylinder(d = 10, h = 100);
        
        translate([30, -20, 26]) rotate([-90, 0, 0]) cylinder(d = 5.6, h = 100);
        translate([30, 10, 26]) rotate([-90, 0, 0]) cylinder(d = 10, h = 100);
        
        
        translate([45, 10.75, 0]) rotate([0, 0, 0]) cylinder(d = 10, h = 17.5);
        translate([45, 40.75, 0]) rotate([0, 0, 0]) cylinder(d = 10, h = 17.5);
        translate([15, 40.75, 0]) rotate([0, 0, 0]) cylinder(d = 10, h = 17.5);
        translate([15, 10.75, 0]) rotate([0, 0, 0]) cylinder(d = 10, h = 17.5);
    }
}

XFixedBearingBracket();