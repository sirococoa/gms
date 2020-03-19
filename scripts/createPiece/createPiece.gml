/// @description 指定の駒を指定の位置に生成する

/// @param pos_x	駒を生成する盤上のx位置
/// @param pos_y	駒を生成する盤上のy位置
/// @param obj		生成する駒の種類
/// @param color	生成する駒の色

var _pos_x = argument0
var _pos_y = argument1
var _obj = argument2
var _color = argument3


var _id = instance_create_layer(getX(_pos_x), getY(_pos_y), "piece", _obj)

with (_id)
{
	pos_x = _pos_x
	pos_y = _pos_y
	color = _color
	image_index = color
	point = gs_rule.pieceToPoint[? _obj]
}

return _id