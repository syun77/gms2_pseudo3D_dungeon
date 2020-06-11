/// @description get viewtbl
/// @param dir
/// @return viewtbl
var dir = argument0;
switch(dir) {
case eDir.Left:
	return [
		-2,  1,-2,  0,-2, -1,
		-1,  1,-1,  0,-1, -1,
		 0,  1, 0,  0, 0, -1
	];
	
case eDir.Top:
	return [
		-1, -2, 0, -2, 1, -2,
		-1, -1, 0, -1, 1, -1,
		-1,  0, 0,  0, 1,  0
	];

case eDir.Right:
	return [
		 2, -1, 2,  0, 2,  1,
		 1, -1, 1,  0, 1,  1,
		 0, -1, 0,  0, 0,  1
	];
	
case eDir.Bottom:
default:
	return [
		 1,  2, 0,  2,-1,  2,
		 1,  1, 0,  1,-1,  1,
		 1,  0, 0,  0,-1,  0
	];
}
