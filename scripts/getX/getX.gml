/// @description 駒の盤上の位置(index)をゲーム上の位置に変換する

/// @param pos_x 盤上のx位置

var _pos_x = argument0

return gs_board.left + (_pos_x + 0.5)*gs_board.tile_width