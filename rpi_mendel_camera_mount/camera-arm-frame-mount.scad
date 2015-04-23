$fn = 100;

module CameraArmFrameMount() {
    difference(){
        // Main body
        union(){
            hull() {
                translate([0, -10, 0]){
                    cube([14.6, 33, 10]);
                }
            }
            
            translate([0, 11.5, 0]){
                rotate([0, -90, 0]){
                    M3NutSocket();
                }
            }
        }
        
        // Rod hole
        translate([7.3, 7.3, -1]){
            cylinder(r = 4.2, h = 12);
        }
        
        // Gap for mounting
        translate([4.05, 7.3, -1 ]){
            cube([7, 20, 12]);
        }
        
        // Screw clamp hole
        translate([-1, 16.5, 5]){
            rotate([0, 90, 0]){
                cylinder(r = 1.65, h = 16.6);
            }
        }
        
        // 30 degree angle arm mount
        rotate([30, 0, 0]){
            translate([-5, -10, 8]){
                cube([20, 20, 20]);
            }
            translate([7.3, -2, 0]){
                cylinder(r = 1.75, h = 20);
                translate([-1.73205, -3, -6]){
                    M3Nut();
                }
            }
        }
    }
}

module M3NutSocket(){
    difference(){
        cube([10, 10, 2.5]);
        translate([3.26795, 2, 0]){
            M3Nut();
        }
    }
}

module M3Nut(){
    linear_extrude(height = 10, convexity = 10){
        polygon([[0,6],[3.4641,6],[5.19615,3],[3.4641,0],[0,0],[-1.73205,3]]);
    }
}

CameraArmFrameMount();