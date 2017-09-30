$fn = 100;
include <part-lib.scad>

module YMagnetMount(){
    difference(){
        union(){
            cube([18, 18, 12]);
            translate([0, 0, 12]) MagnetHolder();
            translate([19, 0, 0]) rotate([0, 270, 90]) TSlotGuide(18, 1);
        }
        
        translate([9, -10, 6]) rotate([-90, 0 ,0]) cylinder(d = 5.6, h = 30);
        translate([9, 15, 6]) rotate([-90, 0 ,0]) cylinder(d = 10, h = 30);
    }
}

YMagnetMount();