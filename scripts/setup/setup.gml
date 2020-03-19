/// @description 駒を初期配置する

with (gs_game)
{
	// 黒
	picies[0, 0] = createPiece(0, 0, obj_rook, 1)
	picies[1, 0] = createPiece(1, 0, obj_knight, 1)
	picies[2, 0] = createPiece(2, 0, obj_bishop, 1)
	picies[3, 0] = createPiece(3, 0, obj_queen, 1)
	picies[4, 0] = createPiece(4, 0, obj_king, 1)
	picies[5, 0] = createPiece(5, 0, obj_bishop, 1)
	picies[6, 0] = createPiece(6, 0, obj_knight, 1)
	picies[7, 0] = createPiece(7, 0, obj_rook, 1)
	for (var i = 0; i < 8; i++)
	{
		picies[i, 1] = createPiece(i, 1, obj_pawn, 1)
	}
	
	// 白
	picies[0, 7] = createPiece(0, 7, obj_rook, 0)
	picies[1, 7] = createPiece(1, 7, obj_knight, 0)
	picies[2, 7] = createPiece(2, 7, obj_bishop, 0)
	picies[3, 7] = createPiece(3, 7, obj_queen, 0)
	picies[4, 7] = createPiece(4, 7, obj_king, 0)
	picies[5, 7] = createPiece(5, 7, obj_bishop, 0)
	picies[6, 7] = createPiece(6, 7, obj_knight, 0)
	picies[7, 7] = createPiece(7, 7, obj_rook, 0)
	for (var i = 0; i < 8; i++)
	{
		picies[i, 6] = createPiece(i, 6, obj_pawn, 0)
	}
}

