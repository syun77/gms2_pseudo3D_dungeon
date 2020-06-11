/// @description Draw minimap.
draw_set_color(c_silver);

// size per chip.
var unit   = minimap_unit;

var left   = 640;
var top    = 32;
var right  = left + (dg_width  * unit);
var bottom = top  + (dg_height * unit);

// draw grid.
for(var i = 0; i < dg_width+1; i++) {
	var x1 = left + (unit * i);
	var y1 = top;
	draw_line(x1, y1, x1, bottom);
}
for(var j = 0; j < dg_height+1; j++) {
	var x1 = left;
	var y1 = top + (unit * j);
	draw_line(x1, y1, right, y1);
}

// draw tiles.
for(var j = 0; j < dg_height; j++) {
	for(var i = 0; i < dg_width; i++) {
		var v = map[# i, j];
		if(v == eChip.None) {
			continue;
		}
		
		// change color.
		switch(v) {
		case eChip.Wall:
			// draw wall.
			draw_set_color(c_silver);
			break;
		default:
			continue;
		}
		
		var x1 = left + (unit * i);
		var y1 = top  + (unit * j);
		var x2 = x1 + unit;
		var y2 = y1 + unit;
		draw_rectangle(x1, y1, x2, y2, false);
	}
}

// draw player.
{
	// center position.
	var cx = left + (unit * (xpos + 0.5));
	var cy = top  + (unit * (ypos + 0.5));
	var rot = dir_to_rot(dir);
	var radius = unit / 2;
	var x1 = cx + lengthdir_x(radius, rot); // front x.
	var y1 = cy + lengthdir_y(radius, rot); // front y.
	var x2 = cx + lengthdir_x(radius*1.2, rot-140); // back1 x.
	var y2 = cy + lengthdir_y(radius*1.2, rot-140); // back1 y.
	var x3 = cx + lengthdir_x(radius*1.2, rot+140); // back2 x.
	var y3 = cy + lengthdir_y(radius*1.2, rot+140); // back2 y.
	draw_set_color(c_blue);
	draw_triangle(x1, y1, x2, y2, x3, y3, false);
}

draw_set_color(c_white);

// ---------------------------------------------
// draw debug.
var px = 8;
var py = 8;
var dy = 24;
draw_text(px, py, "x: " + string(xpos)); py += dy;
draw_text(px, py, "y: " + string(ypos)); py += dy;
draw_text(px, py, "direction: " + string(dir)); py += dy;

