$fn = 100;
include <part-lib.scad>

module YLimitSensor(){
    difference(){
        union(){
                cube([15, 32, 21]);
                cube([15, 2, 22.5]);
            
            
            translate([-1, 0, 0]) rotate([90, 0, 90]) TSlotGuide(32, 1);
            translate([15, 0, 0]) rotate([90, 0, 90]) TSlotGuide(32, 1);
        }
        translate([30, 10, 10]) rotate([0, 270, 0]) cylinder(d = 5.6, h = 40);
        
        translate([25, 10, 10]) rotate([0, 270, 0]) cylinder(d = 10, h = 10);
        translate([0, 10, 10]) rotate([0, 270, 0]) cylinder(d = 10, h = 10);
        
        translate([7.5, 24, -10]) cylinder(d = 3.8, h = 40);
        
    }
}

YLimitSensor();