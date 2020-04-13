$fn=200;

module ChairWheel() {
    cylinder(h=15.5, d=65);
}

module ChairBlock() {
    difference() {
        cube([55, 52, 25]);
        
        translate([27.5, 15.5, 35.5]){ rotate([90, 0, 0]) {
            ChairWheel();
        }}
        
        translate([27.5, 52, 35.5]){ rotate([90, 0, 0]) {
            ChairWheel();
        }}
    }
}

ChairBlock();