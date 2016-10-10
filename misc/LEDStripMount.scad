$fn = 100;



module Nut(key, h){
    function cot(x)=1/tan(x);
	angle = 360/6;
	cote = key * cot(angle);
	echo(angle, cot(angle), cote);
	echo(acos(.6));

	union()
	{
		rotate([0,0,0])
			cube([key,cote,h],center=true);
		rotate([0,0,angle])
			cube([key,cote,h],center=true);
		rotate([0,0,2*angle])
			cube([key,cote,h],center=true);
	}
}


module BaseClip(height){
    union(){
        translate([0, 0, 0])
            rotate([0, 0, 0])
                cylinder(d=15, h=height);
        translate([-7.5, 0, 0])
            rotate([0, 0, 0])
                cube([15, 19.5, height]);
    }
}

module ClipCutOut(height){
    union(){
        translate([0, 0, 0])
            rotate([0, 0, 0])
                cylinder(d=8, h=height);
        translate([-3.25, 0, 0])
            rotate([0, 0, 0])
                cube([6.5, 19.5, height]);
    }
}

module NutHolder(key){
    difference(){
        Nut(10, 2);
        Nut(key, 2);
    }
}


module BoltStandOff(){
       
}

module Clip(height){
    difference(){
        union(){
            BaseClip(height);
            translate([8.5, 9.726, 5])
                rotate([0, 90, 0])
                    NutHolder(5.5);
            translate([-8.5, 9.726, 5])
                rotate([0, 90, 0])
                    cylinder(d1=4.5, d2=7, h=1.5);
        }
        ClipCutOut(height);
        translate([0, 9.726, 5])
            rotate([0, 90, 0])
                cylinder(d=2.7, h=20, center=true);
        translate([0, 17, 5])
            rotate([0, 90, 0])
                cube([12, 2, 12], center=true);
        translate([0, 19, 5])
            rotate([0, 90, 0])
                cube([12, 5, 9], center=true);
        
    }
}

Clip(10);
