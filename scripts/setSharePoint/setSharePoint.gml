/// @description ポイントを共有する際に下限と上限を超えないようにする

/// @param point	新たに設定する予定のポイント

var new_point = argument0

gs_share.share_point = clamp(new_point, 0, gs_share.from.point - 1)
