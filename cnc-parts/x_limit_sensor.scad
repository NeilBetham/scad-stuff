$fn = 100;
include <part-lib.scad>


module XLimitSensor(){
    difference(){
        union(){
            hull(){
                translate([10, 10, 0]) cylinder(d = 20, h = 10);
                translate([50, 10, 0]) cylinder(d = 20, h = 10);
            }
            translate([21, 0, 10]) rotate([0, 0, 0]) CompactLimitSensorMount();
        }
        
        translate([15, 10, -10]) cylinder(d = 5.6, h = 30);
        translate([54, 10, -10]) cylinder(d = 5.6, h = 30);
        
        translate([41.5, 10, -10]) cylinder(d = 3.8, h = 30);
        
        translate([2, 7, 0]) rotate([0, 20, 0]) cube([3, 6, 100]);
    }
}

XLimitSensor();