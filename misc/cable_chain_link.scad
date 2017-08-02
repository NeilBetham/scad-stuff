$fn = 100;

// Angle is with respect to a unit circle
function getTangentPoint(center, radius, angle) =
    let(xp = radius * cos(angle), yp = radius * sin(angle))
    [center[0] + xp, center[1] + yp];


module SideWall(h, l, w) {
    hull(){
        translate([h / 2, w, h / 2]){rotate([90, 0, 0]){
            cylinder(d = h, h = w);
        }}
    
        translate([l - (h / 2), w, h/ 2]){rotate([90, 0, 0]){
            cylinder(d = h, h = w);
        }}
    }
}

module LinkWall(h, l, w, a){
    union(){
        difference(){
            union(){
                SideWall(h, l, w);
            }
            translate([h / 2, w / 2, h / 2]){rotate([90, 0, 0]){
                cylinder(d = h, h = w / 2);
            }}
            
            translate([l - (h / 2), w, h / 2]){rotate([90, 0, 0]){
                cylinder(d = h, h = w / 2 + 0.5);
            }}
            
            translate(let(y = getTangentPoint([h / 2, h / 2], h / 2, a)) [y[0] + 4*sin(a), 0, y[1] + 4*cos(a)]){rotate([0, a + 180, 0]){
                cube([h / 2, w / 2, 4]);
            }}
            
            translate([l - (h / 2), w / 2 - 0.5, h / 2]){rotate([90, 0, 0]){
                cylinder(h = w / 4, r1 = (h / 4) + 0.5, r2 = (h / 6) + 0.5);
            }}
        }
        translate([h / 2, w / 2, h / 2]){rotate([90, 0, 0]){
            cylinder(h = w / 4, r1 = h / 4, r2 = h / 6);
        }}
    }
}

LinkWall(22, 54, 8, 330);
