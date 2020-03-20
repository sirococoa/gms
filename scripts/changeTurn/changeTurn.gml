/// @description 次のターンを始める

with (gs_game)
{
	if (player == 0)
	{
		player = 1
	}
	else
	{
		player = 0
	}
	if (countKing(player) == 0)
	{
		room_goto(rm_result)
	}
	moveable()
	checkCastling()
}

with (obj_moveable)
{
	instance_change(obj_mass, false)
}

with (obj_pawnFirstMove)
{
	instance_change(obj_mass, false)
}

with (obj_shareable)
{
	instance_change(obj_mass, false)
}