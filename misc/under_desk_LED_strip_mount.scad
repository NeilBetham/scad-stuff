$fn=1000;

module UnderDeskLEDStripMount(){
    difference(){
        cube([16, 12, 8]);
        
        translate([-2, 2, 3.5]){
            cube([20, 8, 3]);
        }
        
        translate([4, -2, 3.5]){
            cube([8, 20, 6]);
        }
        
        translate([8, 6, -5]){rotate([]){
            cylinder(d=5, h=20, center=true);    
        }}
        
        translate([8, 6, 12]){rotate([]){
            cylinder(d=8, h=20, center=true);    
        }}
    }
}

UnderDeskLEDStripMount();