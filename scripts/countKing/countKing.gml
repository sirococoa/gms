/// @description 指定した色のobj_kingの数を返す

/// @param color 色

var _color = argument0

var count = 0
with (obj_king)
{
	if (color == _color) count += 1
}
return count