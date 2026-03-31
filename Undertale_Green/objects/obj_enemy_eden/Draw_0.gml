draw_sprite_ext(spr_enemy_eden_body, 0, x, y, 2, spr_body_vscale, 0, c_white, global.half_op);
draw_sprite_ext(spr_enemy_eden_arms, 0, x + 2, y + spr_arm_offset, 2, 2, 0, c_white, global.half_op);
if (instance_exists(obj_dmgnumber))
{
	if (obj_dmgnumber.shudder != 0)
		draw_sprite_ext(spr_enemy_eden_headhurt, 0, x + 2, y + spr_head_offset, 2, 2, 0, c_white, global.half_op);
	else
		draw_sprite_ext(battle_image, global.battle_index, x + 2, y + spr_head_offset, 2, 2, 0, c_white, global.half_op);
}
else if (hp > 0)
{
	draw_sprite_ext(battle_image, global.battle_index, x + 2, y + spr_head_offset, 2, 2, 0, c_white, global.half_op);
}
else
{
	draw_sprite_ext(battle_image, global.battle_index, x + 2, y + spr_head_offset, 2, 2, 0, c_white, global.half_op);
}
