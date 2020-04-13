$fn=100;

module SMASpacer() {
    // Hole 6.3mm - Spacing 32.5mm
    difference(){
        cube([44, 12, 3.5]);
        translate([22 + 32.5 / 2, 6, -1]) rotate([0, 0, 0]) {
            cylinder(h=5, d=6.3);
        }
        translate([22 - 32.5 / 2, 6, -1]) rotate([0, 0, 0]) {
            cylinder(h=5, d=6.3);
        }
    }
}

SMASpacer();