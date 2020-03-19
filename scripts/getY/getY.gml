/// @description 駒の盤上の位置(index)をゲーム上の位置に変換する

/// @param pos_y 盤上のy位置

var _pos_y = argument0

return gs_board.top + (_pos_y + 0.5)*gs_board.tile_height