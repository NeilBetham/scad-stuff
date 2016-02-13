$fn = 200;

module AppleCinemaDisplayVesaMount() {
    difference(){
        union(){
            cube([120, 120, 10], center=true);
            translate([0, -10, 10]){
                cube([60, 50, 20], center=true);
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
        translate([0, 0, 12.5]){
            cube([44, 6.5, 15], center=true);
        }
        
        // Arm holes
        translate([0, -50, 12.5]){
            rotate([-90, 0, 0]){
                cylinder(d=3.5, h=100);
            }
        }
        translate([16, -50, 12.5]){
            rotate([-90, 0, 0]){
                cylinder(d=3.5, h=100);
            }
        }
        translate([-16, -50, 12.5]){
            rotate([-90, 0, 0]){
                cylinder(d=3.5, h=100);
            }
        }
    }
}

AppleCinemaDisplayVesaMount();