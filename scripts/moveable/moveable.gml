/// @description 全ての駒の移動可能マスと共有可能マスを設定し直す

with (obj_piece)
{
	for (var i = 0; i < 8; i++)
	{
		for (var j = 0; j < 8; j++)
		{
			moveable_tiles[i, j] = false
			shareable_tiles[i, j] = false
		}
	}
}

with (obj_pawn)
{
	if (color == 0)
	{
		// 白
		// 前進(駒が存在しない時)
		if (checkEnpty(pos_x, pos_y - 1, color))
		{
			// 2マス前進(最初のみ)
			if (first_move)
			{
				checkEnpty(pos_x, pos_y - 2, color)
				checkAlly(pos_x, pos_y - 2, color)
			}
		}
		checkAlly(pos_x, pos_y - 1, color)
		// 前斜め(敵の駒が存在する時)
		checkEnemy(pos_x - 1, pos_y - 1, color)
		checkEnemy(pos_x + 1, pos_y - 1, color)
	}
	else
	{
		// 黒
		// 前進(駒が存在しない時)
		if (checkEnpty(pos_x, pos_y + 1, color))
		{
			// 2マス前進(最初のみ)
			if (first_move)
			{
				checkEnpty(pos_x, pos_y + 2, color)
				checkAlly(pos_x, pos_y + 2, color)
			}
		}
		checkAlly(pos_x, pos_y + 1, color)
		// 前斜め(敵の駒が存在する時)
		checkEnemy(pos_x - 1, pos_y + 1, color)
		checkEnemy(pos_x + 1, pos_y + 1, color)
	}
}

with (obj_king)
{
	for (var i = -1; i <= 1; i++)
	{
		for (var j = -1; j <= 1; j++)
		{
			if (i != 0 or j != 0)
			{
				checkAll(pos_x + i, pos_y + j, color)
			}
		}
	}

}

with (obj_queen)
{for (var i = -1; i <= 1; i++)
	{
		for (var j = -1; j <= 1; j++)
		{
			if (i != 0 or j != 0)
			{
				checkStreat(pos_x, pos_y, i, j, color)
			}
		}
	}
}

with (obj_rook)
{
	checkStreat(pos_x, pos_y, 1, 0, color)
	checkStreat(pos_x, pos_y, -1, 0, color)
	checkStreat(pos_x, pos_y, 0, 1, color)
	checkStreat(pos_x, pos_y, 0, -1, color)
}

with (obj_bishop)
{
	checkStreat(pos_x, pos_y, 1, 1, color)
	checkStreat(pos_x, pos_y, 1, -1, color)
	checkStreat(pos_x, pos_y, -1, 1, color)
	checkStreat(pos_x, pos_y, -1, -1, color)
}

with (obj_knight)
{
	checkAll(pos_x + 1, pos_y + 2, color)
	checkAll(pos_x + 1, pos_y - 2, color)
	checkAll(pos_x - 1, pos_y + 2, color)
	checkAll(pos_x - 1, pos_y - 2, color)
	checkAll(pos_x + 2, pos_y + 1, color)
	checkAll(pos_x + 2, pos_y - 1, color)
	checkAll(pos_x - 2, pos_y + 1, color)
	checkAll(pos_x - 2, pos_y - 1, color)
}






