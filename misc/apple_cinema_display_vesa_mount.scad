$fn = 200;

module AppleCinemaDisplayVesaMount() {
    difference(){
        union(){
            translate([-60, -60, 0]){
                cube([120, 120, 10]);
            }
            translate([-30, -35, 10]){
                cube([60, 50, 10]);
            }
        }
        
        // 100mm mount holes
        translate([50, 50, -10]){
            cylinder(d=4.5, h = 40);
        }
        translate([-50, 50, -10]){
            cylinder(d=4.5, h = 40);
        }
        translate([50, -50, -10]){
            cylinder(d=4.5, h = 40);
        }
        translate([-50, -50, -10]){
            cylinder(d=4.5, h = 40);
        }
        
        // 75mm mount holes
        translate([37.5, 37.5, -10]){
            cylinder(d=4.5, h = 40);
        }
        translate([-37.5, 37.5, -10]){
            cylinder(d=4.5, h = 40);
        }
        translate([37.5, -37.5, -10]){
            cylinder(d=4.5, h = 40);
        }
        translate([-37.5, -37.5, -10]){
            cylinder(d=4.5, h = 40);
        }
        
        // Display arm slot
        translate([-22, -3.25, 5]){
            cube([44, 6.5, 15]);
        }
        
        // Arm screw holes
        translate([0, -50, 13.5]){
            rotate([-90, 0, 0]){
                cylinder(d=3.5, h=100);
            }
        }
        translate([16, -50, 13.5]){
            rotate([-90, 0, 0]){
                cylinder(d=3.5, h=100);
            }
        }
        translate([-16, -50, 13.5]){
            rotate([-90, 0, 0]){
                cylinder(d=3.5, h=100);
            }
        }
    }
}

AppleCinemaDisplayVesaMount();