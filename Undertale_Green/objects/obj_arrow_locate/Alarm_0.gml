uses += 1;
if (uses < 4)
{
	alarm_set(0, 16);
}
else
{
	uses = 0;
	alarm_set(0, 55);
}
audio_play_sound(snd_arrow, 1, false);
instance_create_depth(x, 0, -500, obj_arrow);
instance_create_depth(x + 50, 0, -500, obj_arrow);
instance_create_depth(x + 100, 0, -500, obj_arrow);
instance_create_depth(x + 150, 0, -500, obj_arrow);
instance_create_depth(x + 200, 0, -500, obj_arrow);
