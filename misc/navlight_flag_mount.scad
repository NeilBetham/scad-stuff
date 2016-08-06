$fn=500;

function cot(x)=1/tan(x);

module hexagon(side_length,h){
	angle = 360/6;
	cote = side_length * cot(angle);
	echo(angle, cot(angle), cote);
	echo(acos(.6));

	union(){
		rotate([0,0,0])
			cube([side_length,cote,h],center=true);
		rotate([0,0,angle])
			cube([side_length,cote,h],center=true);
		rotate([0,0,2*angle])
			cube([side_length,cote,h],center=true);
	}
}

module pole(){
    cylinder(h=100, d=19.15, center=true);
}

module screw(){
    translate([0, 0, 30]){
        union(){
            cylinder(h=30, d=4.7, center=true);
            translate([0, 0 , -45]){
                cylinder(h=60, d=2.55, center=true);
            }
        }
    }   
}

module nut(){
    hexagon(5.1, 30);
}

module body(){
    cylinder(h=10, d=38, center=true);
}


module clip_slot(){
    rotate([0, 0, -22.5]){
        rotate_extrude(angle=45){
            translate([14, 0, 0]){
                square([4.5, 20], center=true);
            }
        }
    }
}

module mount(){
    difference(){
        body();
        translate([14, -10, 0]){rotate([-90, 0, 0]){
            screw();
            translate([0, 0, -11]){
                nut();
            }
        }}
        translate([-14, -10, 0]){rotate([-90, 0, 0]){
            screw();
            translate([0, 0, -11]){
                nut();
            } 
        }}
        translate([0, 0, 0]){
            pole();
        }
        rotate([0, 0, 90]){
            clip_slot();
        }
        rotate([0, 0, -90]){
            clip_slot();
        }
        rotate([0, 0, -90]){
            cube([2, 60, 20], center=true);
        }
    }
}

mount();