draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(c_red);
draw_text(x, y, damage);
draw_set_font(fnt_determination);
draw_set_color(c_black);
draw_rectangle(x - 1 - (selected_enemy.spr_w / 2), ystart + 7, (x + round((selected_enemy.maxhp * stretchfactor) + 1)) - (selected_enemy.spr_w / 2), ystart + 21, false);
draw_set_color(c_dkgray);
draw_rectangle(x - (selected_enemy.spr_w / 2), ystart + 8, (x + round(selected_enemy.maxhp * stretchfactor)) - (selected_enemy.spr_w / 2), ystart + 20, false);
draw_set_color(c_lime);
if (apparenthp > 0)
	draw_rectangle(x - (selected_enemy.spr_w / 2), ystart + 8, round(x + (apparenthp * stretchfactor)) - (selected_enemy.spr_w / 2), ystart + 20, false);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
