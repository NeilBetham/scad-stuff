$fn = 50;

module Spool_Bearing_Base() {
	union() {
		// Base
		difference(){
			cube([80, 80, 20]);

			// Rod slot
			translate([11, 85, 8]) {
				hull() {
					rotate([90, 0 ,0]) {
						cylinder(h = 90, r = 4.5);
						translate([0, -20, 0]) {
							cylinder(h = 90, r = 4.5);
						}
					}
				}
			}
			
			// Rod slot
			translate([69, 85, 8]) {
				hull() {
					rotate([90, 0 ,0]) {
						cylinder(h = 90, r = 4.5);
						translate([0, -20, 0]) {
							cylinder(h = 90, r = 4.5);
						}
					}
				}
			}
		}

		// Vertical bearing
		translate([40, 40, 19]) {
			cylinder(h = 7, r = 9);
               
            translate([0, 0, 5]) {
                cylinder(h = 6, r = 3.8);
            }
		}
	}
}

Spool_Bearing_Base();