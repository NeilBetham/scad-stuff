$fn = 100;

module M4CapScrew(){
    translate([0, 0, -19]){
        union(){
            translate([0, 0, 14]){
                cylinder(d = 7.6, h = 28);
            }
            
            translate([0, 0, -14]){
                cylinder(d = 4.6, h = 28);
            }
        }
    }
}

module M5LowProfileScrew(){
    translate([0, 0, -19]){
        union(){
            translate([0, 0, 14]){
                cylinder(d = 9.4, h = 28);
            }
            
            translate([0, 0, -14]){
                cylinder(d = 5.6, h = 28);
            }
        }
    }
}

module XSlideBracket(){
    difference(){
        union(){
            cube([60, 40, 12]);
            translate([0, 7.6, 12]) cube([60, 4.8, 1.25]);
            translate([0, 27.6, 12]) cube([60, 4.8, 1.25]);
        }
        translate([17, 33, 12]) M4CapScrew();
        translate([17, 7, 12]) M4CapScrew();
        translate([43, 7, 12]) M4CapScrew();
        translate([43, 33, 12]) M4CapScrew();
        
        translate([53.5, 30, -3.5]) rotate([0, 180, 0]) M5LowProfileScrew();
        translate([53.5, 10, -3.5]) rotate([0, 180, 0]) M5LowProfileScrew();
        translate([6.5, 30, -3.5]) rotate([0, 180, 0]) M5LowProfileScrew();
        translate([6.5, 10, -3.5]) rotate([0, 180, 0]) M5LowProfileScrew();
    }
}

XSlideBracket();