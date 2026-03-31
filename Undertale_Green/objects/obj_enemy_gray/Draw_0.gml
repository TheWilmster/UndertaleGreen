draw_sprite_ext(spr_enemy_gray, hair_frame, x, (room_width / 2) - 174, 2, 2, 0, c_white, global.half_op);
if (instance_exists(obj_dmgnumber) && obj_dmgnumber.shudder != 0)
	draw_sprite_ext(spr_enemy_gray_headsurprised, global.battle_index, x, (room_width / 2) - 174, 2, 2, 0, c_white, global.half_op);
else
	draw_sprite_ext(battle_image, global.battle_index, x, (room_width / 2) - 174, 2, 2, 0, c_white, global.half_op);
