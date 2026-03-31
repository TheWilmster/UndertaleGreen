if (thrown == false && image_index >= 18)
{
	audio_play_sound(snd_arrow, 1, false);
	instance_create_depth(164, 168, depth - 1, obj_bishop_ff);
	thrown = true;
}
if (throw_piece == true && image_index >= 20)
{
	image_speed = 0;
	alarm[1] = 30;
	throw_piece = false;
}
if (y < 0)
	instance_destroy();
