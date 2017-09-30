$fn = 100;
include <part-lib.scad>;


module YLeadScrewNutMount(){
    difference(){
        union(){
            cube([70, 50, 10]);
            translate([0, 5, 10]) rotate([0, 0, 0]) TSlotGuide(40, 2);
        }
        
        translate([85, 25, 5]) cube([60, 30, 10], center = true);
        
        translate([10, 15, 0]) cylinder(d = 5.6, h = 30);
        translate([10, 35, 0]) cylinder(d = 5.6, h = 30);
        translate([30, 15, 0]) cylinder(d = 5.6, h = 30);
        translate([30, 35, 0]) cylinder(d = 5.6, h = 30);
        
        translate([55, 25, 0]) cylinder(d = 30, h = 30);
        
        translate([55, 6, 0]) cylinder(d = 4.7, h = 30);
        translate([55, 44, 0]) cylinder(d = 4.7, h = 30);
    }
}

YLeadScrewNutMount();