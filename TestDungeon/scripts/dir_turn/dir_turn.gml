/// @description turn direction.
/// @param dir
/// @param is_left
var dir = argument0;
var is_left = argument1;

if(is_left) {
	// turn left.
	switch(dir) {
	case eDir.Left:  return eDir.Bottom;
	case eDir.Top:   return eDir.Left;
	case eDir.Right: return eDir.Top;
	default:         return eDir.Right;
	}
}
else {
	// turn right.
	switch(dir) {
	case eDir.Left:  return eDir.Top;
	case eDir.Top:   return eDir.Right;
	case eDir.Right: return eDir.Bottom;
	default:         return eDir.Left;
	}
}
