module BeltRecess(){
    hull(){
        translate([107, 0, 0]) cylinder(d = 52, h= 50);
        translate([33, 0, 0]) cylinder(d = 34, h= 50);
    }
}



module ScrewSlot(diameter, width, length){
    hull(){
        cylinder(d = diameter, h = length);
        translate([0, width]) cylinder(d = diameter, h = length);
    }
}

module FixedLeadScrewBushing(){  
    rotate([0, -90, 0]) translate([0, 0, 0]) union(){
        translate([0, 0, -10]) intersection(){
            cylinder(d = 54, h= 20, center = true);
            cube([46, 46, 20], center = true);
        }
        
        translate([0, 0, 0]) cylinder(d = 36, h = 18);
        translate([0, 0, 18]) cylinder(d = 18, h = 100);
        
        for(i = [45:90:315]){
            screwRadius = 22;
            translate([screwRadius * sin(i), screwRadius * cos(i), 0]) cylinder(d = 5.2, h = 116);
        }
    }
}

module SupportLeadScrewBushing(){  
    rotate([-90, 0, 90]) translate([-21, -27, -20]) union(){
        intersection(){
            translate([21, 27, 0]) cylinder(d = 54, h= 20);
            cube([42, 60, 20]);
        }
        
        translate([21, 27, 20]) cylinder(d = 36, h = 7);
        translate([21, 27, 7]) cylinder(d = 16, h = 100);
        
        translate([6, 12, 7]) cylinder(d = 5.2, h = 116);
        translate([36, 42, 7]) cylinder(d = 5.2, h = 116);
        translate([6, 42, 7]) cylinder(d = 5.2, h = 116);
        translate([36, 12, 7]) cylinder(d = 5.2, h = 116);
    }
}

module NEMA24MotorMount(slidePlay){
    union(){
        cube([102, 62 + slidePlay, 62]);
        
        translate([102, 7.5, 7.5]) rotate([0, 90, 0]) {
            ScrewSlot(5, slidePlay, 100);
        }
        
        translate([102, (62 + slidePlay) - 7.5, 7.5]) rotate([0, 270, 180]) {
            ScrewSlot(5, slidePlay, 100);
        }
        
        translate([102, (62 + slidePlay) - 7.5, 62 - 7.5]) rotate([0, 270, 180]) {
            ScrewSlot(5, slidePlay, 100);
        }
        
        translate([102, 7.5, 62 - 7.5]) rotate([0, 90, 0]) {
            ScrewSlot(5, slidePlay, 100);
        }
        
        translate([102, 31, 31]) rotate([0, 90, 0]) {
            ScrewSlot(40, slidePlay, 100);
        }
    }
}

module TSlotGuide(length, guideCount){
    translate([0, 0, 0.5]){
        for (index = [0: guideCount - 1]) {
            translate([(length / 2), 10 + (index * 20), 0]) cube([length, 4.8, 1], center = true);
        }
    }
}

module LimitSensorMount(){
    translate([0, 0, 0]) difference(){
        union(){
            cube([32, 20, 5]);
        }
        
        translate([2.5, 1.5, 3.5]) cube([27, 17, 2]);
        
        translate([25.5, 10, -50]) cylinder(d = 3.8, h = 100);
    }
}

module CompactLimitSensorMount(){
    translate([0, 0, 0]) difference(){
        union(){
            cube([27, 20, 5]);
        }
        
        translate([0, 1.5, 3.5]) cube([27, 17, 2]);
        
        translate([20.5, 10, -50]) cylinder(d = 3.8, h = 100);
    }
}

module MagnetHolder(){
    translate([0, 0, 0]) difference(){
        union(){
            cube([18, 18, 6]);
        }
        
        translate([2.5, 2.5, 1.35]) cube([19, 13, 3.3]);
    }
}