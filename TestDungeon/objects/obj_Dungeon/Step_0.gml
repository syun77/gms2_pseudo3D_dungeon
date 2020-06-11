/// @description move.

// check to turn or move.
var xnext = xpos;
var ynext = ypos;
if(keyboard_check_pressed(vk_left)) {
	// turn left.
	dir = dir_turn(dir, true);
}
else if(keyboard_check_pressed(vk_right)) {
	// turn right.
	dir = dir_turn(dir, false);
}
else if(keyboard_check_pressed(vk_up)) {
	// move forward.
	var vec = dir_to_vec(dir);
	xnext += vec[0];
	ynext += vec[1];
}
else if(keyboard_check_pressed(vk_down)) {
	// move backward.
	var vec = dir_to_vec(dir);
	xnext -= vec[0];
	ynext -= vec[1];
}

if(xpos != xnext or ypos != ynext) {
	if(0 <= xnext and xnext < dg_width and 0 <= ynext and ynext < dg_height) {
		var v = map[# xnext, ynext];
		if(v != eChip.Wall) {
			// move position.
			xpos = xnext;
			ypos = ynext;
		}
		else {
			// can't move.
			show_debug_message("opps!");
		}
	}
}
