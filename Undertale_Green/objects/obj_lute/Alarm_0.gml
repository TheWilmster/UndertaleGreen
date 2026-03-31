strum_rot = 1;
strum_notes = 1;
image_angle = 6;
if (instance_exists(obj_lute))
	audio_play_sound(snd_strum, 1, false);
if (x == 565)
{
	instance_create_depth(565, 320, -9999, obj_note);
	instance_create_depth(565, 320, -9999, obj_note2);
	instance_create_depth(565, 320, -9999, obj_note3);
}
if (x == 75)
{
	instance_create_depth(75, 320, -9999, obj_note);
	instance_create_depth(75, 320, -9999, obj_note2);
	instance_create_depth(75, 320, -9999, obj_note3);
}
alarm_set(0, 25);
