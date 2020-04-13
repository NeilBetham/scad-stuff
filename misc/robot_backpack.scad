$fn=100;

module RobotBackpack(){
    difference(){
        union(){
            cube([60, 40, 3.8]);
            translate([0, 17, 3.8]) cube([60, 6, 14]);
            translate([0, 0, 3.8]) cube([60, 17, 1.7]);
        }
        
        
        translate([20, 0, -1]) rotate([-90, 0, 0]) cylinder(h=22, d=7);
        translate([40, 0, -1]) rotate([-90, 0, 0]) cylinder(h=22, d=7);
        
        translate([16.5, 21, 0]) cube([7, 3, 20]);
        translate([36.5, 21, 0]) cube([7, 3, 20]);

        translate([10, 11, 0]) cylinder(h=6, d=5);
        translate([50, 11, 0]) cylinder(h=6, d=5);
        
        translate([10, 32, 0]) cylinder(h=4, d=7);
        translate([50, 32, 0]) cylinder(h=4, d=7);
    }
}

RobotBackpack();