$fn = 200;

module FlashLightHolderBottom() {
    difference(){
        union(){
            translate([-5, 0, 0]){
                rotate([0, 90, 0]){
                    cylinder(h=10, d=37.5);
                }
            }
            translate([0, 0, -4]){
                cube([10, 52, 8], center=true);
            }
        }
        translate([-20, 0, 0]){
            rotate([0, 90, 0]){
                cylinder(h=40, d=31.62);
            }
        }
        translate([0, 0, 49]){
            cube([100, 100, 100], center=true);
        }
        translate([0, 22.5, -50]){
            rotate([0, 0, 0]){
                cylinder(h=100, d=3);
            }
        }
        translate([0, -22.5, -50]){
            rotate([0, 0, 0]){
                cylinder(h=100, d=3);
            }
        }
    }
}
translate([-1, 0, 5]){rotate([0, -90, 0]){
    FlashLightHolderBottom();
}}