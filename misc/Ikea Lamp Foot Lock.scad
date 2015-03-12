module ikeaLampFootLock(){
difference() {
	polyhedron(
		points = [
			[0, 0, 0], 		//0
			[9, 0, 0],		//1
			[9, 14, 0],		//2
			[0, 14, 0],		//3
			[0, 0, 5],		//4
			[9, 0, 5],		//5
			[0, 28, 20],		//6
			[9, 28, 20],		//7
			[0, 20, 20],		//8
			[9, 20, 20]		//9
		],
		faces = [
			[1, 2, 3, 0], // Bottom Face
			[8, 9, 5, 4], // Top Face Slanted
			[5, 9, 7, 2, 1], // Right Side Face
			[3, 6, 8, 4, 0], // Left side Face
			[7, 6, 3, 2], // Front Face
			[4, 5, 1, 0], // Back Face
			[8, 6, 7, 9]  // Top Face Flat
		]
	);

	translate([4.5, 10, -1]) {
		cylinder(20, 1.65, $fs=.05);
	}
}
}
ikeaLampFootLock();