/// @description Draw Dungeon.
var back_left     = [0, 5, 5, 5, 6, 6, 6,10, 5,11, 0,11]
var back_center   = [5, 5,11, 5,11,11, 5,11]
var back_right    = [10,6,11, 5,16, 5,16,11,11,11,10,10]
var middle_left   = [0, 3, 3, 3, 5, 5, 5,11, 3,13, 0,13]
var middle_center = [3, 3,13, 3,13,13, 3,13]
var middle_right  = [11,5,13, 3,16, 3,16,13,13,13,11,11];
var front_left    = [0, 0, 3, 3, 3,13, 0,16];
var front_center  = [0, 0,16, 0,16,16, 0,16]; // YOU ARE IN ROCK!
var front_right   = [13,3,16, 0,16,16,13,13];

var bg_back  = [0, 0,16, 0,16,10, 0,10];
var bg_floor = [6,10,10,10,16,16, 0,16];

// size.
var wall_unit = 32;

// draw passage.
draw_set_color(make_color_hsv(0, 0, 24));
dg_draw_wall_from_array(0, 0, bg_back, wall_unit);
dg_draw_wall_from_array(0, 0, bg_floor, wall_unit);

// draw wall.
var wall_list = [
	back_left, back_center, back_right,
	middle_left, middle_center, middle_right,
	front_left, front_center, front_right
];

var view_tbl = dir_get_viewtbl(dir);

for(var i = 0; i < array_length_1d(view_tbl); i+=2) {
	var px = xpos + view_tbl[i];
	var py = ypos + view_tbl[i+1];
	var is_out_range = (px < 0 || dg_width <= px || py < 0 || dg_height <= py);
	if(map[# px, py] == eChip.Wall or is_out_range) {
		var idx = i/2;
		var brightness = 48 + (16 * floor(idx/3)); // (0,1,2 => 48) (3,4,5 => 64) (6,7,8 => 80)
		var color = make_color_hsv(0, 0, brightness);
		draw_set_color(color);
		var wall = wall_list[idx];
		dg_draw_wall_from_array(0, 0, wall, wall_unit);
	}
}

draw_set_color(c_white);
