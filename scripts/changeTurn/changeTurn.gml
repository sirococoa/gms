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
	remain_share_time = gs_rule.max_share_time
	moveable()
	checkCastling()
}

resetMass()

with (obj_pawn)
{
	if (color == gs_game.player)
	{
		enpassant = false
	}
}
