module ChairBumper(){
    difference(){
        cube([120, 80, 22]);
        
        translate([-5, 70.1, 18.19]){
            rotate([-90, 0, -90]){
                linear_extrude(height = 130){
                    polygon([[0, 0], [60.2, 0], [60.2, 10.2],  [58, 18.2], [2.2, 18.2], [0, 10.2]]);
                }
            }
        }
    }
}

module Main(){
    translate([0, 80, 22]){
        rotate([180, 0, 0]){
            ChairBumper();
        }
    }
}

Main();