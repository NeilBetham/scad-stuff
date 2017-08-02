$fn = 100;

module UBNTAirGateway() {
    difference() {
        cube([65, 55, 25]);
        
        translate([5, 5, 8]){
            cube([55, 45, 30]);
        }
        
        translate([27.5, -5, 8]){
            cube([10, 65, 30]);
        }
        
        translate([-5, 9.5, 8]){
            cube([75, 36, 30]);
        }
        
        translate([27.5, -5, 3]){
            cube([10, 65, 2]);
        }
        
        translate([16.25, 27.5, -25]){MountingScrew();}
        translate([48.75, 27.5, -25]){MountingScrew();}
    }
}

module MountingScrew(){
    union(){
        translate(){
            cylinder(d=4.5, h=30);
        }
        
        translate([0, 0, 30]){
            cylinder(d1=4.5, d2=15,  h=5);
        }
    }
}

UBNTAirGateway();