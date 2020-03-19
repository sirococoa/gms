/// @description ソート済みリストを探索して、与えられた数以下で最大のものを返す

/// @param list			ソート済みリスト
/// @param number	探索する数


var _list = argument0
var _number = argument1

var answer = noone

for (var i = 0; i < ds_list_size(_list); i++)
{
	if (_list[| i] > _number) 
	{
		break
	}
	answer = _list[| i]
}
return answer
