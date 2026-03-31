if (obj_flashlightoverlay.image_index == 23)
	visible = true;
if (obj_alaska_pull.image_index == 7)
{
	sprite_index = spr_destiny_cave_pull;
	image_speed = 0;
	image_index = 0;
}
if (obj_alaska_pull.image_index == 5 && obj_alaska_pull.shake == true)
{
	image_speed = 0;
	image_index = 1;
}
if (obj_alaska_pull.movedestiny == true)
	image_index = obj_alaska_pull.image_index - 5;
if (breathe == true)
{
	y = 214;
	image_speed = 0.075;
	audio_play_sound(snd_bigdoor_open, 80, false, 0.5);
	sprite_index = spr_destiny_cave_breathe;
	breathe = false;
}
