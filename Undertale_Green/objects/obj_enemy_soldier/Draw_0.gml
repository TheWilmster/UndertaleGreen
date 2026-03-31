if (deathanim == false)
{
	if (soldier_type == 1)
	{
		draw_sprite_ext(spr_enemy_mage_body, m_body_img, x, y, 2, 2, 0, c_white, global.half_op);
		draw_sprite_ext(spr_enemy_mage_head, m_head_img, x, y + spr_head_offset, 2, 2, 0, c_white, global.half_op);
	}
	if (soldier_type == 2)
	{
		draw_sprite_ext(spr_enemy_wizard_feet, 0, x, y, 2, 2, 0, c_white, global.half_op);
		draw_sprite_ext(spr_enemy_wizard_body, w_body_img, x, y, spr_body_hscale, spr_body_vscale, 0, c_white, global.half_op);
		draw_sprite_ext(spr_enemy_wizard_head, w_head_img, x, y + spr_head_offset, 2, 2, 0, c_white, global.half_op);
	}
	if (soldier_type == 3)
	{
		draw_sprite_ext(spr_enemy_jester_body, j_body_img, x + j_x_offset, y, 2, spr_body_vscale, 0, c_white, global.half_op);
		draw_sprite_ext(spr_enemy_jester_feet, j_body_img, x + j_x_offset, y, 2, 2, 0, c_white, global.half_op);
		draw_sprite_ext(spr_enemy_jester_head, j_body_img, x + j_x_offset, y + spr_head_offset, 2, 2, 0, c_white, global.half_op);
	}
}
draw_sprite_ext(spr_soldier_smoke, smoke_img, x, y, 2.5, 2.5, 0, c_white, global.half_op);
