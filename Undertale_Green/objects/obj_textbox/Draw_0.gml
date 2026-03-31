confirm_key = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
skip_key = keyboard_check(ord("X")) || keyboard_check_pressed(vk_shift);
textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 148;
draw_set_font(txtb_txt[global.page]);
if (setup == false)
{
	setup = true;
	global.can_move = false;
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	if (setup == true)
		interaction_ct += 1;
	page_number = array_length(text);
	for (var p = 0; p < page_number; p++)
	{
		text_length[p] = string_length(text[p]);
		portrait_x_offset[p] = 42;
		text_x_offset[p] = 17;
		line_width = textbox_width - (border * 2) - 80;
		if (speaker_sprite[0] == -4)
		{
			text_x_offset[p] = 17;
			line_width = textbox_width - (border * 2);
		}
		if (speaker_sprite[0] == spr_standard_speaker)
		{
			text_x_offset[p] = 17;
			line_width = textbox_width - (border * 2) - 30;
		}
	}
}
if (draw_char == 0 && speaker_sprite[global.page] == spr_standard_speaker)
{
	total_numb = 0;
	last_space = 0;
	if (text_length[global.page] > 30 && string_pos("\n", text[global.page]) == 0)
	{
		do
		{
			last_space = string_last_pos_ext(" ", text[global.page], 30 + last_space);
			text[global.page] = string_insert("\n", text[global.page], 1 + last_space);
			total_numb += 1;
		}
		until (last_space > (text_length[global.page] - 30));
		text_length[global.page] += total_numb;
	}
}
if (draw_char == 0 && speaker_sprite[global.page] != spr_standard_speaker && txtb_txt[global.page] == fnt_determination)
{
	total_numb = 0;
	last_space = 0;
	if (text_length[global.page] > 23 && string_pos("\n", text[global.page]) == 0)
	{
		do
		{
			last_space = string_last_pos_ext(" ", text[global.page], 23 + last_space);
			text[global.page] = string_insert("\n", text[global.page], 1 + last_space);
			total_numb += 1;
		}
		until (last_space > (text_length[global.page] - 23));
		text_length[global.page] += total_numb;
	}
}
if (draw_char == 0 && speaker_sprite[global.page] != spr_standard_speaker && txtb_txt[global.page] == fnt_ariel)
{
	total_numb = 0;
	last_space = 0;
	if (text_length[global.page] > 14 && string_pos("\n", text[global.page]) == 0)
	{
		do
		{
			last_space = string_last_pos_ext(" ", text[global.page], 14 + last_space);
			text[global.page] = string_insert("\n", text[global.page], 1 + last_space);
			total_numb += 1;
		}
		until (last_space > (text_length[global.page] - 14));
		text_length[global.page] += total_numb;
	}
}
if (draw_char < text_length[global.page])
{
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_length[global.page]);
	if (string_char_at(text[global.page], draw_char) == "!")
		text_speed = 0.08;
	else if (string_char_at(text[global.page], draw_char) == "." && string_char_at(text[global.page], draw_char + 1) == " ")
		text_speed = 0.08;
	else if (string_char_at(text[global.page], draw_char) == "," && string_char_at(text[global.page], draw_char + 1) == " ")
		text_speed = 0.08;
	else
		text_speed = 0.5;
}
if (confirm_key)
{
	if (draw_char == text_length[global.page])
	{
		global.dia_progress += 1;
		if (global.page < (page_number - 1))
		{
			global.page++;
			draw_char = 0;
		}
		else
		{
			global.dia_progress = 0;
			global.can_move = true;
			instance_destroy();
		}
	}
}
else if (skip_key && draw_char != text_length[global.page])
{
	draw_char = text_length[global.page];
}
txtb_image += txtb_image_speed;
txtb_sprite_w = sprite_get_width(txtb_sprite);
txtb_sprite_h = sprite_get_height(txtb_sprite);
draw_sprite_ext(txtb_sprite, txtb_image, textbox_x + text_x_offset[global.page], textbox_y, textbox_width / txtb_sprite_w, textbox_height / txtb_sprite_h, 0, c_white, 1);
var _speaker_x;
if (speaker_sprite[0] != -4)
{
	sprite_index = speaker_sprite[global.page];
	if (draw_char == text_length[global.page])
		image_index = 0;
	_speaker_x = textbox_x + portrait_x_offset[global.page];
}
if (speaker_sprite[0] == spr_standard_speaker)
	draw_sprite_ext(spr_standard_speaker, image_index, _speaker_x - 12, (textbox_y + (textbox_height / 2)) - 32, 45 / sprite_width, 50 / sprite_height, 0, c_white, 1);
var _drawtext = string_copy(text[global.page], 1, draw_char);
if (speaker_sprite[0] != -4)
{
	if (speaker_sprite[0] != spr_standard_speaker)
		draw_text_ext(textbox_x + text_x_offset[global.page] + border + 70, textbox_y + border, _drawtext, line_sep, line_width);
}
if (speaker_sprite[0] == -4)
	draw_text_ext(textbox_x + text_x_offset[global.page] + border, textbox_y + border, _drawtext, line_sep, line_width);
if (speaker_sprite[0] == spr_standard_speaker)
	draw_text_ext(textbox_x + text_x_offset[global.page] + border + 25, (textbox_y + border) - 1, _drawtext, line_sep, line_width);
