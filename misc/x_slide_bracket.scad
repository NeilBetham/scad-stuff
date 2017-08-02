$fn = 100;

module M4CapScrew(){
    translate([0, 0, -19]){
        union(){
            translate([0, 0, 14]){
                cylinder(d = 8, h = 28);
            }
            
            translate([0, 0, -14]){
                cylinder(d = 5, h = 28);
            }
        }
    }
}

module XSlideBracket(){
    difference(){
        union(){
            cube([60, 40, 11]);
            translate([0, 7.6, 11]) cube([60, 4.8, 1.25]);
            translate([0, 27.6, 11]) cube([60, 4.8, 1.25]);
        }
        translate([17, 33, 12]) M4CapScrew();
        translate([17, 7, 12]) M4CapScrew();
        translate([43, 7, 12]) M4CapScrew();
        translate([43, 33, 12]) M4CapScrew();
        
        translate([53.5, 30, -15]) cylinder(d = 6, h = 30);
        translate([53.5, 10, -15]) cylinder(d = 6, h = 30);
        translate([6.5, 30, -15]) cylinder(d = 6, h = 30);
        translate([6.5, 10, -15]) cylinder(d = 6, h = 30);
    }
}

XSlideBracket();