$fn = 100;
include <part-lib.scad>;


module XLeadScrewNutMount(){
    difference(){
        union(){
            cube([70, 50, 10]);
            translate([40, 0, 10]) rotate([0, 0, 90]) TSlotGuide(50, 2);
        }
        
        translate([85, 25, 5]) cube([60, 30, 10], center = true);
        
        translate([10, 10, 0]) cylinder(d = 5.6, h = 30);
        translate([10, 40, 0]) cylinder(d = 5.6, h = 30);
        translate([30, 10, 0]) cylinder(d = 5.6, h = 30);
        translate([30, 40, 0]) cylinder(d = 5.6, h = 30);
        
        translate([55, 25, 0]) cylinder(d = 30, h = 30);
        
        translate([55, 6, 0]) cylinder(d = 4.7, h = 30);
        translate([55, 44, 0]) cylinder(d = 4.7, h = 30);
    }
}

XLeadScrewNutMount();