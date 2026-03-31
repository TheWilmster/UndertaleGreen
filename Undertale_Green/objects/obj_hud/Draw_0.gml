if (instance_exists(obj_battle_transition))
	depth = obj_battle_transition.depth + 1;
var hp = global.hp;
var maxhp = global.maxhp;
draw_set_alpha(global.half_op);
draw_set_font(fnt_mars);
draw_text_transformed(32, 401, "OLIVE", 1.5, 1.5, 0);
draw_set_color(c_red);
draw_rectangle(275, 400, 275 + (maxhp * 1.2), 420, false);
draw_set_color(c_yellow);
draw_rectangle(275, 400, 275 + (hp * 1.2), 420, false);
draw_set_color(c_white);
draw_text_transformed(290 + (maxhp * 1.2), 401, string(hp) + " / " + string(maxhp), 1.5, 1.5, 0);
