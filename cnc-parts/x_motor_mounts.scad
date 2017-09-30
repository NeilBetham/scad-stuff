$fn = 100;

include <part-lib.scad>;

module XMotorBracket(){
    translate([0, 0, 16]) rotate([0, 90, 0]){
        difference(){
            union(){
                translate([0, 0, -40]) cube([16, 65, 114]);
                translate([-7, 0, 0]) cube([7, 65, 40]);
                translate([-40, 0, 0]) cube([33, 65, 8]);
                translate([0, 0, 0]) rotate([0, 180, 0]) TSlotGuide(40, 3);
            }
            
            translate([-92, 0, 8]) NEMA24MotorMount(0);
            
            
            translate([-10, 50, -2]) rotate([0, 0, 0]) cylinder(d = 5.6, h = 30);
            translate([-10, 10, -2]) rotate([0, 0, 0]) cylinder(d = 5.6, h = 30);
            
            translate([-30, 50, -2]) rotate([0, 0, 0]) cylinder(d = 5.6, h = 30);
            translate([-30, 10, -2]) rotate([0, 0, 0]) cylinder(d = 5.6, h = 30);
            
            translate([-10, 50, 7]) rotate([0, 0, 0]) cylinder(d = 10, h = 30);
            translate([-10, 10, 7]) rotate([0, 0, 0]) cylinder(d = 10, h = 30);
            
            translate([-30, 50, 7]) rotate([0, 0, 0]) cylinder(d = 10, h = 30);
            translate([-30, 10, 7]) rotate([0, 0, 0]) cylinder(d = 10, h = 30);
            
            translate([0, 40.2, -40]) cube([16, 30, 40]);
            
            translate([8, 50, -10]) rotate([90, 0, 0]) cylinder(d = 5.6, h = 60);
            translate([8, 50, -30]) rotate([90, 0, 0]) cylinder(d = 5.6, h = 60);
        }
    }
}

XMotorBracket();