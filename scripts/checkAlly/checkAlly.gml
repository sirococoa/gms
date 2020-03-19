/// @description 指定されたマスに味方の駒があれば、共有可能マスに設定し、trueを返す。そうでなければ、falseを返す。

/// @param pos_x	確認するマスの盤上のx位置
/// @param pos_y	確認するマスの盤上のy位置
/// @param color	駒の色

var _pos_x = argument0
var _pos_y = argument1
var _color = argument2

if (_pos_x < 0) return false
if (7 < _pos_x) return false
if (_pos_y < 0) return false
if (7 < _pos_y) return false

if (gs_game.picies[_pos_x, _pos_y] != noone and gs_game.picies[_pos_x, _pos_y].color == _color)
{
	 shareable_tiles[_pos_x, _pos_y] = true
	 return true
}
return false