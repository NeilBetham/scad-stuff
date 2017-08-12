$fn = 100;

include <part-lib.scad>;

module XMotorBracket(){
    translate([0, 0, 16]) rotate([0, 90, 0]){
        difference(){
            union(){
                translate([0, 0, -40]) cube([16, 65, 116]);
                translate([-7, 0, 0]) cube([7, 65, 40]);
                translate([-40, 0, 0]) cube([33, 65, 10]);
                translate([0, 0, 0]) rotate([0, 180, 0]) TSlotGuide(40, 3);
            }
            
            translate([-92, 0, 10]) NEMA24MotorMount(0);
            
            
            translate([-10, 50, -2]) rotate([0, 0, 0]) cylinder(d = 5.6, h = 30);
            translate([-10, 10, -2]) rotate([0, 0, 0]) cylinder(d = 5.6, h = 30);
            
            translate([-30, 50, -2]) rotate([0, 0, 0]) cylinder(d = 5.6, h = 30);
            translate([-30, 10, -2]) rotate([0, 0, 0]) cylinder(d = 5.6, h = 30);
            
            translate([-10, 50, 9]) rotate([0, 0, 0]) cylinder(d = 10, h = 30);
            translate([-10, 10, 9]) rotate([0, 0, 0]) cylinder(d = 10, h = 30);
            
            translate([-30, 50, 9]) rotate([0, 0, 0]) cylinder(d = 10, h = 30);
            translate([-30, 10, 9]) rotate([0, 0, 0]) cylinder(d = 10, h = 30);
        }
    }
}

XMotorBracket();