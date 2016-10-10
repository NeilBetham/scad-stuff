$fn=100;
 
 module BaseArm() {
     polygon([
         [0, 0],
         [0, 14.07],
         [-39.2, 27.11],
         [-39.2, 42.6],
         [-50, 42.6],
         [-50, 21.3],
         [-8, 3.53],
         [-8, -29],
         [-9.5, -31],
         [-3, -34.39],
         [-3, -32.26],
         [0, -32.26]
     ]);
 }
 
 
 module SlamLatchArm() {
     difference(){
         linear_extrude(height=11){ BaseArm(); }
         translate([-5.85, 9.42, 7]){rotate([0, 0, 0]){
             cylinder(d=3, h=20, center=true);
         }}
         translate([-42, 36.24, 5.5]){rotate([0, 90, 0]){
             cylinder(d=6.1, h=20, center=true);
         }}
     }
     
 }
 
 
 SlamLatchArm();