/// @description 駒を移動する。移動先の駒は破棄される

/// @param pos_x	移動先の盤上のx位置
/// @param pos_y	移動先の盤上のy位置
/// @param piece	移動する駒

var _pos_x = argument0
var _pos_y = argument1
var _id = argument2

// 移動元を削除する
gs_game.picies[_id.pos_x, _id.pos_y] = noone

with (_id)
{
	x = getX(_pos_x)
	y = getY(_pos_y)
	pos_x = _pos_x
	pos_y = _pos_y
	first_move = false
}

// 移動先に駒があれば、破棄する
if (gs_game.picies[_id.pos_x, _id.pos_y] != noone)
{
	instance_destroy(gs_game.picies[_id.pos_x, _id.pos_y])
}

gs_game.picies[_id.pos_x, _id.pos_y] = _id