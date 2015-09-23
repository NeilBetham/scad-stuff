$fn = 100;

module ModMicMount(){
    difference(){
        union(){
            difference(){
                cylinder(h = 5, d = 10.05);
                
                translate([0, 3.25, 5.01]){
                    rotate([90, 180, 90]){
                        linear_extrude(h = 10, center = true){
                            polygon([[0,0], [6.5, 0], [3.25, 3]]);
                        }
                    }
                }
                
                translate([3.25, 0, 5.01]){
                    rotate([90, 180, 0]){
                        linear_extrude(h = 10, center = true){
                            polygon([[0,0], [6.5, 0], [3.25, 3]]);
                        }
                    }
                }
                
                translate([0, 0, 3.5]){
                    cylinder(h = 1.5, d = 7);
                }
            }
            
            cylinder(h = 3.5, d1 = 8.2, d2 = 6);
        }
        
        translate([0, 0, -1]){
            cylinder(h = 7, d = 5.5);
        }
    }
}

module k712HeadbandClipBack(){
    difference(){
        union(){
            translate([-1, 0, 0]){
                cube([45, 10, 4]);
            }
            
            translate([10, 7.5, 4]){
                rotate([90, 0, 0]){
                    linear_extrude(height = 5){
                        polygon([[0, 0], [2, 0], [2, 4.5], [0, 4.5], [-.75, 2.75], [0, 2.75]]);
                    }
                }
            }
            
            translate([33, 2.5, 4]){
                rotate([90, 0, 180]){
                    linear_extrude(height = 5){
                        polygon([[0, 0], [2, 0], [2, 4.5], [0, 4.5], [-.75, 2.75], [0, 2.75]]);
                    }
                }
            }
        }
        
        translate([4.25, -1, 4]){
            rotate([-90, 0, 0]){
                cylinder(h = 12, d = 4);
            }
        }
        
        translate([38.75, -1, 4]){
            rotate([-90, 0, 0]){
                cylinder(h = 12, d = 4.1);
            }
        }
    }
}

module k712HeadbadClipFront(){
    difference(){
        union(){
            translate([-1, 0, 0]){
                cube([45, 10, 2]);
            }
            
            translate([4.25, 0, 0]){
                rotate([-90, 0, 0]){
                    cylinder(h = 10, d = 8);
                }
            }
            
            translate([38.75, 0, 0]){
                rotate([-90, 0, 0]){
                    cylinder(h = 10, d = 8);
                }
            }
            
            translate([21.5, 5, 2]){
                rotate([0, 0, 0]){
                    ModMicMount();
                }
            }
        }
        
        translate([4.25, -1, 0]){
            rotate([-90, 0, 0]){
                cylinder(h = 12, d = 4);
            }
        }
        
        translate([38.75, -1, 0]){
            rotate([-90, 0, 0]){
                cylinder(h = 12, d = 4);
            }
        }
        
        translate([0, -1, -6]){
            cube([43, 12, 6]);
        }
        
        translate([10, 2, -1]){
            cube([4, 6, 4]);
        }
        
        translate([29, 2, -1]){
            cube([4, 6, 4]);
        }
        
        translate([21.5, 5, -1]){
            cylinder(h = 5.5, d = 6.6);
        }
     }
}

module Main(){
    translate([1, 0, 0]){
        k712HeadbadClipFront();
    }
    
    translate([1, 15, 0]){
        k712HeadbandClipBack();
    }
}


Main();
