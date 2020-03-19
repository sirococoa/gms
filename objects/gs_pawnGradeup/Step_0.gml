/// @description Insert description here
// You can write your code in this editor


for (var i = 0; i < 4; i++)
{
	with (obj_pawnGradeup_queen)
	{
		if (seleceted)
		{
			with (other.target)
			{
				instance_change(obj_queen, false)
			}
			room_goto_previous()
		}
	}
	with (obj_pawnGradeup_rook)
	{
		if (seleceted)
		{
			with (other.target)
			{
				instance_change(obj_rook, false)
			}
			room_goto_previous()
		}
	}
	with (obj_pawnGradeup_bishop)
	{
		if (seleceted)
		{
			with (other.target)
			{
				instance_change(obj_bishop, false)
			}
			room_goto_previous()
		}
	}
	with (obj_pawnGradeup_knight)
	{
		if (seleceted)
		{
			with (other.target)
			{
				instance_change(obj_knight, false)
			}
			room_goto_previous()
		}
	}
}

