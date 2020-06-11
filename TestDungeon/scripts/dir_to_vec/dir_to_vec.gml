/// @description direction to vector(array[0]:x, array[1]:y)
/// @param dir
/// @return array([0]:x, [1]:y)
var dir = argument0;
switch(dir) {
case eDir.Left:   return [-1, 0];
case eDir.Top:    return [0, -1];
case eDir.Right:  return [1, 0];
case eDir.Bottom: return [0, 1];
default:          return [0, 0];
}