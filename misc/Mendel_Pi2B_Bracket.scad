$fn = 100;

module Pi2B_Bracket() {
    difference() {
        union() {
            // Pi baseplate
            minkowski() {
                cylinder(h = 1, r = 3);
                translate([3, 3, 0]) {
                    cube([79, 50, 1]);
                }
            }
            
            // Mounting tabs
            translate([105, 28, 0]){
                difference() {
                    hull() {
                        cylinder(h = 2, r = 8);
                        
                        translate([-30, 0, 0]){
                            cylinder(h = 2, r = 8);
                        }
                    }
                    
                    hull() {
                        translate([0, 0, -.5]) {
                            cylinder(h = 3, r = 1.625);
                            
                            translate([-15, 0, 0]) {
                                cylinder(h = 3, r = 1.625);
                            }
                        }
                    }
                }
            }
            
            translate([10, 28, 0]){
                difference() {
                    hull() {
                        cylinder(h = 2, r = 8);
                        
                        translate([-30, 0, 0]){
                            cylinder(h = 2, r = 8);
                        }
                    }
                    
                    hull() {
                        translate([-15, 0, -.5]) {
                            cylinder(h = 3, r = 1.625);
                            
                            translate([-15, 0, 0]) {
                                cylinder(h = 3, r = 1.625);
                            }
                        }
                    }
                }
            }
            
            // Board stand offs
            translate([3.5, 3.5, 0]) {
                cylinder(h = 5, r = 3.1);
                
                translate([0, 49, 0]) {
                    cylinder(h = 5, r = 3.1);
                }

                translate([58, 0, 0]) {
                    cylinder(h = 5, r = 3.1);
                }
                
                translate([58, 49, 0]) {
                    cylinder(h = 5, r = 3.1);
                }
            }
        }
        
        // Screw holes
        translate([3.5, 3.5, -1]) {
            cylinder(h = 8, r = 1.375);
            
            translate([0, 49, 0]) {
                cylinder(h = 8, r = 1.375);
            }
            
            translate([58, 0, 0]) {
                cylinder(h = 8, r = 1.375);
            }
            
            translate([58, 49, 0]) {
                cylinder(h = 8, r = 1.375);
            }
        }
    }
}

Pi2B_Bracket();