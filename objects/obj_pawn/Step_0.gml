/// @description Insert description here
// You can write your code in this editor

// 端に行った時の処理
if (color == 0 and pos_y == 0 and !stop)
{
	createPawnGradeup()
	stop = true
}
if (color == 1 and pos_y == 7 and !stop)
{
	createPawnGradeup()
	stop = true
}
