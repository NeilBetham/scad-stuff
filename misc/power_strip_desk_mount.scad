$fn = 100;

module Body(){
    linear_extrude(50){
        difference(){
            polygon(
                [[0, 0], [40,0], [40,7], [8, 7], [8, 44.25], [40, 44.25], [40, 49.25], [0, 89.25]]
            );
            
            polygon(
                [[5, 49.25], [32.3, 49.25], [5, 76.55]]
            );
        }
    }
}

module PowerStripDeskMount() {
    difference(){
        Body();
        
        translate([20, 65, 25]){rotate([0, 90, 45]){
            cylinder(h = 20, d = 4.3, center = true);
        }}
        
        translate([-5, -53, -5]){rotate([0, 0, 0]){
            cube([60, 60, 60]);
        }}
        
        translate([0, 20, 20]){rotate([0, 90, 0]){
            cylinder(h = 20, d = 4.3, center = true);
        }}
        
        translate([0, 20, 30]){rotate([0, 90, 0]){
            cylinder(h = 20, d = 4.3, center = true);
        }}
        
        translate([0, 30, 25]){rotate([0, 90, 0]){
            cylinder(h = 20, d = 4.3, center = true);
        }}
    }
}

PowerStripDeskMount();