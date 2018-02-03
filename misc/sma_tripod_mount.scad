$fn = 100;

module SMATripodMount(){
  difference(){
    cube([20, 20, 20]);
    
    translate([4, 0, 5]) cube([20, 20, 20]);
    
    translate([12, 10, -1]) cylinder(d = 5.4, h = 10);
    translate([-1, 10, 12.5]) rotate([0, 90, 0]) cylinder(d = 6.35, h = 10);
  }
}

SMATripodMount();