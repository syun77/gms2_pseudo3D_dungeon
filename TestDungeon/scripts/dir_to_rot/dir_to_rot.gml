/// @description direct to angle.
/// @param dir
var dir = argument0; // direction (eDir).
switch(dir) {
case eDir.Left:   return 180;
case eDir.Top:    return 90;
case eDir.Right:  return 0;
case eDir.Bottom: return 270;
default:          return -1;
}
