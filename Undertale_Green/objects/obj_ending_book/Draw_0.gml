display_set_gui_size(global.gui_width, global.gui_height);
draw_sprite_ext(spr_save_book, 0, 0, book_y, 1, 1, 0, c_white, book_alpha);
if (has_drawn == true)
	draw_sprite_part_ext(spr_save_book_ending, obj_chai_forest_bench.page_drawing, 0, 0, 320, draw_height, 0, book_y, 1, 1, c_white, 1);
