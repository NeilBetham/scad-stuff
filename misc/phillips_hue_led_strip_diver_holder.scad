$fn = 100;

module ScrewHole(){
    union(){
        translate([0, 0, -25]){
            cylinder(d = 5, h = 50);
                
            translate([0, 0, 25]){cylinder(d = 8, h = 25);}
        }
    }
}

module PhillipsHueLEDStripDriverHolder() {
    difference(){
        cube([38, 84, 18]);
            
        translate([0, 0, 2]){
            // Main device cutout
            translate([1.5, 1.5, 4]){
                cube([35, 81, 30]);
            }
               
            // Cord slots
            translate([14, -5, 9]){
               union(){
                    translate([5, 0, 0]){rotate([-90, 0, 0]){
                        cylinder(r=5, h=100);
                    }}
                    cube([10, 100, 30]);
                }
            }
               
            // Side strap slots
            translate([-5, 12, 4]){
                cube([50, 60, 30]);
            }
        }
        
        // Zip tie slot
        translate([-5, 38, 1.5]){
            cube([50, 8, 3]);
        }
        
        // Screw holes
        translate([19, 21, 3]){
            ScrewHole();
        }
        
        // Screw holes
        translate([19, 63, 3]){
            ScrewHole();
        }
    }
}

PhillipsHueLEDStripDriverHolder();