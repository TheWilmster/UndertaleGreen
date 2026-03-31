for (var i = 1; i < 6; i += 1)
	draw_sprite_ext(spr_chai_gradient, 0, 0, 0, 2, ((-i * cos(siner2)) / 4) + (i / 2), 0, c_white, global.half_op * 0.1);
draw_sprite_ext(spr_enemy_chai_chair, 0, room_width / 2, (room_width / 2) - 174, 2, 2, 0, c_white, global.half_op);
draw_sprite_ext(spr_enemy_chai_upper, 0, x, y + 40 + offset, 2, spr_body_vscale, 0, c_white, global.half_op);
if (instance_exists(obj_dmgnumber) && obj_dmgnumber.shudder != 0)
{
	draw_sprite_ext(spr_enemy_chai_head_surprised, global.battle_index, x - 4, (y - 12) + spr_head_offset + offset, 2, 2, 0, c_white, global.half_op);
	if (obj_dmgnumber.x <= 290)
		draw_sprite_ext(spr_enemy_chai_head_surprised_left, global.battle_index, x - 4, (y - 12) + spr_head_offset + offset, 2, 2, 0, c_white, global.half_op);
	if (obj_dmgnumber.x >= 350)
		draw_sprite_ext(spr_enemy_chai_head_surprised_right, global.battle_index, x - 4, (y - 12) + spr_head_offset + offset, 2, 2, 0, c_white, global.half_op);
}
else
{
	draw_sprite_ext(battle_image, global.battle_index, x - 4, (y - 12) + spr_head_offset + offset, 2, 2, 0, c_white, global.half_op);
}
draw_sprite_ext(spr_enemy_chai_lower, hand_frame, x, y + offset, 2, 2, 0, c_white, global.half_op);
