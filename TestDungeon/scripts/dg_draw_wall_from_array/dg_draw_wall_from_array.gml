/// @description draw wall.
var xbase     = argument0;
var ybase     = argument1;
var array     = argument2;
var wall_unit = argument3;

var x1 = array[0]; var y1 = array[1];
var x2 = array[2]; var y2 = array[3];
for(var i = 4; i < array_length_1d(array); i+=2) {
	var x3 = array[i];
	var y3 = array[i+1];
	draw_triangle(
		xbase + x1*wall_unit, ybase + y1*wall_unit, 
		xbase + x2*wall_unit, ybase + y2*wall_unit, 
		xbase + x3*wall_unit, ybase + y3*wall_unit, 
		false);
			
	// triangle fan.
	x2 = x3;
	y2 = y3;
}
