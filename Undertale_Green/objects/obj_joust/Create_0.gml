image_speed = 0;
damage = 4;
fade_in = true;
fade_out = false;
move_start = false;
image_alpha = 0;
alarm_set(1, 30);
alarm_set(0, 100);
temp_dir = obj_joust_control.dir;
sound_play = false;
if (obj_joust_control.dir == 0)
	image_index = 0;
if (obj_joust_control.dir == 2)
	image_index = 2;
if (obj_joust_control.dir == 3)
	image_index = 3;
if (obj_joust_control.dir == 1)
	image_index = 1;
if (obj_joust_control.space == y)
{
	if (image_index == 0 || image_index == 2)
		instance_destroy(self);
}
if (obj_joust_control.space == x)
{
	if (image_index == 1 || image_index == 3)
		instance_destroy(self);
}
