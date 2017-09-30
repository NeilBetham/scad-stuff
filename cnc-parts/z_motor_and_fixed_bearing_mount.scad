$fn = 100;
include <part-lib.scad>

module ZMotorAndFixedBearingMount(){
    difference(){
        union(){
            translate([-15, 0, 0]) cube([148.5, 54, 65]);
            translate([-15, 54, 20]) cube([148.5, 20.4, 45]);
            translate([-15, 74.4, 0]) cube([148.5, 10, 65]);
            
            translate([85, 74.4, 0]) rotate([90, -90, 0]) TSlotGuide(20, 4);
            translate([65, 55, 0]) rotate([90, -90, 0]) TSlotGuide(20, 1);
            translate([5, 55, 0]) rotate([90, -90, 0]) TSlotGuide(20, 1);
            translate([5, 74.4, 0]) rotate([90, -90, 0]) TSlotGuide(20, 1);
        }
        
        translate([25, 34, 24]) rotate([90, -90, 0]) FixedLeadScrewBushing();
        translate([-21, -1, 32]) cube([84, 95.4, 35]);
        
        translate([67.5, 4, 167]) rotate([0, 90, 0]) NEMA24MotorMount(0); 
        
        translate([131, 35, 32]) rotate([0, 0, 180]) BeltRecess();
        
        translate([0, 70, 32]) cube([134, 40, 60]);
        
        translate([122, 11.5, 0]) cylinder(d = 15, h = 30);
        translate([75, 11.5, 0]) cylinder(d = 15, h = 30);
        translate([122, 58.5, 0]) cylinder(d = 15, h = 30);
        translate([75, 58.5, 0]) cylinder(d = 15, h = 30);
        
        translate([15, 72, 10]) rotate([-90, 0, 0]) cylinder(d = 5.6, h = 40);
        translate([35, 72, 10]) rotate([-90, 0, 0]) cylinder(d = 5.6, h = 40);
        translate([55, 72, 10]) rotate([-90, 0, 0]) cylinder(d = 5.6, h = 40);
        translate([75, 72, 10]) rotate([-90, 0, 0]) cylinder(d = 5.6, h = 40);
        
        translate([55, 74, 10]) rotate([90, 0, 0]) cylinder(d = 5.6, h = 80);
        translate([55, 28, 10]) rotate([90, 0, 0]) cylinder(d = 10, h = 80);
        
        translate([-5, 28, 10]) rotate([90, 0, 0]) cylinder(d = 10, h = 80);
        translate([-5, 72, 10]) rotate([-90, 0, 0]) cylinder(d = 5.6, h = 40);
        translate([-5, 74, 10]) rotate([90, 0, 0]) cylinder(d = 5.6, h = 80);
    }
}

ZMotorAndFixedBearingMount();