$fn = 100;

module RobotMount (){
    difference() {
        union(){
            cube([80, 28, 60]);
            translate([0, 0, 0]){
                rotate([90, 0, 0]){
                    FrameClip();
                }
            }
            translate([65, 0, 0]){
                rotate([90, 0, 0]){
                    FrameClip();
                }
            }    
        }
        
        translate([-.5, 0, 8]){
            RobotFrame(81);
        }
    }
    
}

module RobotFrame(length){
    rotate([90, 0, 90]){
        linear_extrude(length) {
            polygon(
                points = [ [0, 0], [13, 0], [23, 10], [23, 34], [13, 44], [0, 44] ],
                paths = [[0, 1, 2, 3, 4, 5]]
            );
        }
    }
}

module CdSPhotoCell(){
    union(){
        cube([5.7, 4.7, 40]);
        translate([0, 1.35, -4]){
            cube([5.7, 2, 4]);
        }
        translate([4.7, 2.35, -4]){
            rotate([0, 180, 0]){
                cylinder(r=1, h=30);
            }
        }
        translate([1, 2.35, -4]){
            rotate([0, 180, 0]){
                cylinder(r=1, h=30);
            }
        }
    }
}

module FrameClip(){
    translate([0, 0, 10]){
        rotate([0, 90, 0]){
            linear_extrude(15){
                polygon(
                    points = [ [0, 0], [10, 0], [10, 8], [9, 9], [5, 9], [0, 8] ],
                    paths = [[0, 1, 2, 3, 4, 5]]
                );
            }
        }
    }
}

module CdSSocket(){
    difference(){
        hull(){
            translate([16, 5, 0]){
                cylinder(r=5, h = 20);
            }
            cube([10, 10, 20]);
        }
        translate([10, 7.25, 10]){
            rotate([180, 0, 0]){
                CdSPhotoCell();
            }
        }
    }
}

module IRSensorClip(){
    difference(){
        cube([8, 12, 34]);
        translate([3, 1.75, 2.35]){
            cube([5, 8.5, 1.65]);
        }
    }
}

module Fan(){
    difference(){
        cube([60, 60,25]);
        
        translate([0, 0, 3.5]){
            difference(){
                translate([-5, -5, 0]){
                    cube([70, 70, 17]);
                }
                translate([30, 30, 0]){
                    union(){
                        rotate_extrude($fn=200){
                                polygon(
                                    points = [ [0, 0], [0, 17], [32.286, 17], [30, 14.15], [30, 2.85], [32.286, 0] ]
                                );
                        }
                        translate([0, 0, 0]){
                            for(i = [0, 1, 2, 3]){
                                rotate([0, 0, (45+(i * 90))]){
                                    translate([-2, 29, 0]){
                                        cube([4, 3.286, 17]);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

module FanMount(){
    translate([0, 0, 0]){
        rotate([0, 0, 0]){
            difference(){
                cube([62, 15, 17]);
                
                translate([1, 1 , -3.5]){
                    Fan();
                }
            }
        }
    }
}

module FullMount(){
    union(){
        translate([0, 0, 28]){
            rotate([-90, 0, 0]){
                RobotMount();
            }
        }
        translate([-1, 1, 0]){
            rotate([0, 0, -90]){
                CdSSocket(); 
            }
        }
        translate([71, 1, 0]){
            rotate([0, 0, -90]){
                CdSSocket(); 
            }
        }
        translate([62, 92, 8]){
            rotate([0, 90, -90]){
                IRSensorClip(); 
            }
        }
        translate([6, 92, 8]){
            rotate([0, 90, -90]){
                IRSensorClip(); 
            }
        }
        translate([71, 0, 0]){
            rotate([0, 0, 180]){
                FanMount();
            }
        }
    }
}

FullMount();