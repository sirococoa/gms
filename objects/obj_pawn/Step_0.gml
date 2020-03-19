/// @description Insert description here
// You can write your code in this editor

if (room == rm_battle)
{
	// 端に行った時の処理
	if (color == 0 and pos_y == 0)
	{
		room_goto(rm_pawnGradeup)
	}
	if (color == 1 and pos_y == 7)
	{
		room_goto(rm_pawnGradeup)
	}
}