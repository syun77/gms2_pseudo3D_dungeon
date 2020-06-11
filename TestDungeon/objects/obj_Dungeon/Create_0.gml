/// @description create dungeon.
// dungeon size.
dg_width  = 7;
dg_height = 9;

minimap_unit = 32;

// direction.
enum eDir {
	None,
	Left,
	Top,
	Right,
	Bottom,
};

enum eChip {
	None,
	Wall,
};


map = ds_grid_create(dg_width, dg_height);
ds_grid_clear(map, eChip.None);

// put walls.
map[# 1, 2] = eChip.Wall;
map[# 2, 2] = eChip.Wall;
map[# 4, 4] = eChip.Wall;
map[# 5, 3] = eChip.Wall;
map[# 4, 2] = eChip.Wall;

// player information.
// start point.
xpos = 0;
ypos = 0;
dir = eDir.Left;
