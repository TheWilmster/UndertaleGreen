display_set_gui_size(global.gui_width, global.gui_height);
draw_set_font(fnt_determination);
draw_sprite_ext(spr_nighttele, image_index, 1, obj_player.y + 15, 1, 1, 0, c_white, 1);
draw_set_color(c_white);
draw_text_ext_transformed(128, obj_player.y + 105, "[X] Exit", 1, 10000000, 1, 1, 0);
