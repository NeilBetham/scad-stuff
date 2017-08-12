$fn = 100;

include <part-lib.scad>;

module YMotorBracket(){
    translate([0, 0, 16]) rotate([0, 90, 0]){
        difference(){
            union(){
                translate([0, 0, -40]) cube([16, 70, 116]);
                translate([-7, 0, 0]) cube([7, 70, 40]);
                translate([-40, 0, 0]) cube([33, 70, 10]);
                translate([0, 0, -0.2]) rotate([-90, 0, 90]) TSlotGuide(70, 2);
            }
            
            translate([-92, 4, 10]) NEMA24MotorMount(0);
            translate([-15, 35, -10.2]) rotate([0, 90, 0]) cylinder(d = 5.6, h = 50);
            translate([-15, 35, -30.2]) rotate([0, 90, 0]) cylinder(d = 5.6, h = 50);
            
            translate([-15, 10, -10.2]) rotate([0, 90, 0]) cylinder(d = 5.6, h = 50);
            translate([-15, 10, -30.2]) rotate([0, 90, 0]) cylinder(d = 5.6, h = 50);
            
            translate([-15, 60, -10.2]) rotate([0, 90, 0]) cylinder(d = 5.6, h = 50);
            translate([-15, 60, -30.2]) rotate([0, 90, 0]) cylinder(d = 5.6, h = 50);
            
            
            translate([-10, 60, -1]) rotate([0, 0, 0]) cylinder(d = 5.6, h = 30);
            translate([-10, 10, -1]) rotate([0, 0, 0]) cylinder(d = 5.6, h = 30);
            
            translate([-30, 60, -1]) rotate([0, 0, 0]) cylinder(d = 5.6, h = 30);
            translate([-30, 10, -1]) rotate([0, 0, 0]) cylinder(d = 5.6, h = 30);
            
            translate([-10, 60, 9]) rotate([0, 0, 0]) cylinder(d = 10, h = 30);
            translate([-10, 10, 9]) rotate([0, 0, 0]) cylinder(d = 10, h = 30);
            
            translate([-30, 60, 9]) rotate([0, 0, 0]) cylinder(d = 10, h = 30);
            translate([-30, 10, 9]) rotate([0, 0, 0]) cylinder(d = 10, h = 30);
        }
    }
}

YMotorBracket();