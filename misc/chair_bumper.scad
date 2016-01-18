module BendyCutOuts(){
	cube([2, 20, 30]);
	translate([6, 12.5, 0]) {
		cube([2, 20, 30]);
	}
}

module ChairBumper(){
    difference(){
        cube([120, 80, 22]);
        
        translate([-5, 70.1, 18.19]){
            rotate([-90, 0, -90]){
                linear_extrude(height = 130){
                    polygon([[.2, 0], [60, 0], [60, 12.2],  [58.5, 18.2], [1.7, 18.2], [.2, 12.2]]);
                }
            }
        }

		  translate([-25, 44, -1]){
				rotate([0, 0, -90]){
					BendyCutOuts();
				}
		  }
		  translate([-.01, 44, -1]){
				rotate([0, 0, -90]){
					BendyCutOuts();
				}
		  }
		  translate([25, 44, -1]){
				rotate([0, 0, -90]){
					BendyCutOuts();
				}
		  }
		  translate([50, 44, -1]){
				rotate([0, 0, -90]){
					BendyCutOuts();
				}
		  }
		  translate([75, 44, -1]){
				rotate([0, 0, -90]){
					BendyCutOuts();
				}
		  }
		  translate([100, 44, -1]){
				rotate([0, 0, -90]){
					BendyCutOuts();
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