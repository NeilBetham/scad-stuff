$fn = 200;

module FlashLightHolderTop() {
    difference(){
        union(){
            translate([0, 0, 12]){
                cube([10, 36, 24], center=true);
            }
            translate([0, 0, 5]){
                cube([10, 52, 10], center=true);
            }
            translate([0, 9, 25]){
                cube([10, 54, 10], center=true);
            }
        }
        translate([-20, 0, 0]){
            rotate([0, 90, 0]){
                cylinder(h=40, d=32);
            }
        }
        translate([0, 22.5, -50]){
            rotate([0, 0, 0]){
                cylinder(h=60, d=3);
            }
        }
        translate([0, -22.5, -50]){
            rotate([0, 0, 0]){
                cylinder(h=100, d=3);
            }
        }
        translate([0, 31, -50]){
            rotate([0, 0, 0]){
                cylinder(h=100, d=3.5);
            }
        }
        translate([0, 31, 15.5]){
            rotate([0, 0, 0]){
                cylinder(h=5, d=5);
            }
        }
    }
}
translate([0, 0, 5]){
    rotate([0, 90, 0]){
        FlashLightHolderTop();
    }
}



