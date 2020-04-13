module UBNTACMeshClip() {
    difference(){
        cube([40, 5, 46.3]);
        
        translate([20 - 33.6/2, 1.5, 3]) {
            cube([33.6, 2, 46]);
        }
        translate([20 - 27.2/2, 0, 3]) {
            cube([27.2, 2, 46]);
        }
    }
}

module PoEInjectorMount() {
    difference() {
        cube([52, 36, 70]);
        translate([26 - 46.3/2, 18 - 30.4 / 2, 2]) cube([46.3, 30.4, 89]);
        translate([26 - 40/2, 18 - 27 / 2, -1]) cube([40, 27, 10]);
    }
}


module ZipTieLoop() {
    difference() {
        cube([20, 36, 70]);
        translate([5, 27, 0]) cube([10, 5, 70]);
    }
}

module PoEAndAP() {
    union() {
        translate([12, 0, 0]) rotate([0, 0, 0]) UBNTACMeshClip();
        translate([0, 5, 0]) rotate([0, 0, 0]) PoEInjectorMount();
        translate([0, 41, 0]) ZipTieLoop();
    }
}

PoEAndAP();