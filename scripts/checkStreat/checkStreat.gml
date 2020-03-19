/// @description 直線状に移動可能マスと共有可能マスを設定する

/// @param pos_x	探索を行う始点の盤上のx位置
/// @param pos_y	探索を行う始点の盤上のy位置
/// @param dx			探索を行う直線のxの増加量
/// @param dy			探索を行う直線のyの増加量
/// @param color	駒の色


var _pos_x = argument0
var _pos_y = argument1
var _dx = argument2
var _dy = argument3
var _color = argument4

var i = _dx
var j = _dy

while (true)
{
	if (checkEnpty(pos_x + i, pos_y + j, color))
	{
		
	}
	else if (checkEnemy(pos_x + i, pos_y + j, color))
	{
		break
	}
	else if (checkAlly(pos_x + i, pos_y + j, color))
	{
		break
	}
	else
	{
		break
	}
	i = i + _dx
	j = j + _dy
}


