$fn = 200; // Set resolution

module Bearing() {
	difference(){
		cylinder(h = 7, r = 11);
		translate([0, 0, -1]){
			cylinder(h = 9, r = 4);
		}
	}
}

module Spool_Bearing(){
	union() {
		difference() {
			cylinder(h = 20, r = 40);			

			// Bearing holes
			rotate([0, 0, 0]) {
				translate([-13, 18, -5]) {
					cube([25, 16, 30]);
				}
			}
	
			rotate([0, 0, 120]) {
				translate([-13, 18, -5]) {
					cube([25, 16, 30]);
				}
			}
	
			rotate([0, 0, 240]) {
				translate([-13, 18, -5]) {
					cube([25, 16, 30]);
				}
			}
			
			// Vertical bearing
			translate([0, 0, -1]) {
				cylinder(h = 22, r = 11.05);
			}
		}
	
		// Bearing pins
		rotate([0, 0, 0]) {
			translate([-(sin(45) * 4), 38, 0]) {
				rotate([90, 0, 0]) {
					cube([sin(45) * 8, sin(45) * 8, 12]);
				}
			}
		}
	
		rotate([0, 0, 120]) {
			translate([-(sin(45) * 4), 38, 0]) {
				rotate([90, 0, 0]) {
					cube([sin(45) * 8, sin(45) * 8, 12]);
				}
			}
		}
	
		rotate([0, 0, 240]) {
			translate([-(sin(45) * 4), 38, 0]) {
				rotate([90, 0, 0]) {
					cube([sin(45) * 8, sin(45) * 8, 12]);
				}
			}
		}

		// Spool centering cylinder
		translate([0, 0, 20]) {
			difference() {
				cylinder(h = 10, r = 26);
				translate([0, 0, -1]) {
					cylinder(h = 12, r = 24);
				}
			}
			
		}

		// upper ring support
		translate([0, 0, 11]) {
			difference() {
				cylinder(h = 9, r1 = 18, r2 = 26);
				translate([0, 0, -1]){
					cylinder(h = 20, r = 12);
				}
			}
		}
	}
}

module Bearing_Holder(){
    difference(){
        cylinder(h = 20, r = 40);
        
        Spool_Bearing();
    }
}

Bearing_Holder();