/// @description obj_buttonを生成する。(gs_pawnGradeup用)

/// @param x			obj_buttonを生成するゲーム上のx座標
/// @param y			obj_buttonを生成するゲーム上のy座標
/// @param image	表示する駒の画像
/// @param color	表示する駒の色


var _x = argument0
var _y = argument1
var _object = argument2
var _color = argument3

var _id = instance_create_layer(_x, _y, "button", _object)
_id.image_index = _color

return _id