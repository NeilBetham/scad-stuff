$fn = 100;

module AppleTV4K(){
  // 99 mm square, 35 tall
  difference(){
    union(){
      hull(){
        translate([20, 20, 0]) cylinder(h = 36, r = 20);
        translate([80, 20, 0]) cylinder(h = 36, r = 20);
        translate([20, 80, 0]) cylinder(h = 36, r = 20);
        translate([80, 80, 0]) cylinder(h = 36, r = 20);        
      }
    }
  }
}

module AppleTV4KWallMount(){
  difference(){
    union(){
      scale([1.08, 1.08, 1.25]) AppleTV4K();
    }
    
    translate([4, 4, 6]) AppleTV4K();

    translate([6, 6, 20]) scale([.96, .96, .96]) AppleTV4K();
    
    translate([21, -10, 6]) cube([66, 120, 40]);
    translate([-10, 31, 6]) cube([120, 46, 40]);
    
    translate([4, 75, 6]) cube([100, 100, 36]);
    translate([6, 50, 6]) cube([96, 100, 40]);
    translate([4, 99, 6]) cube([100, 100, 40]);
    
    translate([54, 98, -10]) cylinder(h = 30, d = 5);
    translate([54, 98, 3.5]) cylinder(h = 6, d1 = 5, d2 = 25);
  }
}


AppleTV4KWallMount();