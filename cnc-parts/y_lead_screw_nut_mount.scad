$fn = 100;
include <part-lib.scad>;


module YLeadScrewNutMount(){
    difference(){
        union(){
            cube([70, 40, 10]);
            translate([0, 0, 10]) rotate([0, 0, 0]) TSlotGuide(40, 2);
        }
        
        translate([85, 20, 5]) cube([60, 21, 10], center = true);
        
        translate([10, 10, 0]) cylinder(d = 5.6, h = 30);
        translate([10, 30, 0]) cylinder(d = 5.6, h = 30);
        translate([30, 10, 0]) cylinder(d = 5.6, h = 30);
        translate([30, 30, 0]) cylinder(d = 5.6, h = 30);
        
        translate([55, 20, 0]) cylinder(d = 21, h = 30);
        
        translate([55, 5.5, 0]) cylinder(d = 4.7, h = 30);
        translate([55, 34.5, 0]) cylinder(d = 4.7, h = 30);
    }
}

YLeadScrewNutMount();