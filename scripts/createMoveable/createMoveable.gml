var _pos_x = argument0
var _pos_y = argument1
var _piece = argument2

var _id = instance_create_layer(getX(_pos_x), getY(_pos_y), "moveable", obj_moveable)

with (_id)
{
	pos_x = _pos_x
	pos_y = _pos_y
	piece = _piece
}

