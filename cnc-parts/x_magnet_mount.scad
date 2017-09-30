$fn = 100;
include <part-lib.scad>

module XMagnetMount(){
    translate([0, 0, 18]) rotate([270, 0, 0]) difference(){
        union(){
            cube([15, 18, 28]);
            translate([0, -1, 0]) rotate([0, 270, 0]) TSlotGuide(28, 1);
            translate([15, 0, 10]) cube([2, 18, 18]);
            translate([23, 18, 10]) rotate([90, 0, -90]) MagnetHolder();
        }
        
        translate([-10, 9, 5]) rotate([0, 90, 0]) cylinder(d = 5.6, h = 40);
    }
}

XMagnetMount();