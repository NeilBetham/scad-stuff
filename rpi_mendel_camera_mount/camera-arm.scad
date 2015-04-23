$fn = 100;

module CameraArm(){
    difference(){
        hull(){
            translate([4, 4, 0]){ cylinder(r = 4, h = 8); }
            translate([4, 26, 0]){ cylinder(r = 4, h = 8); }
        }
        
        translate([4, 4, -1]){ cylinder(r = 1.4, h = 10); }
        translate([4, 26, -1]){ cylinder(r = 1.7, h = 10); }
    }
}

CameraArm();