display_set_gui_size(global.gui_width, global.gui_height);
draw_set_font(fnt_determination);
draw_sprite_ext(spr_script, page, 160, y + 120 + offset, 1, 1, 0, c_white, alpha);
draw_set_color(c_white);
draw_text_ext_transformed(128, 220, "[X] Exit", 1, 10000000, 1, 1, 0);
