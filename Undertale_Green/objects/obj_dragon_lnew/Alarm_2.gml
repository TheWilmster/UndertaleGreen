if (sequence == 0)
{
	if (dualfire == false)
		alarm[4] = 30;
	else
		alarm[4] = 65;
	shot_x += 1;
	obj_heart.shake = 4;
}
shake = false;
if (pattern == 0)
{
	instance_create_depth(220, 260, -500, obj_fireball_4, 
	{
		theta: (sequence * pi) / 9
	});
}
if (pattern == 1)
{
	instance_create_depth(220, 260, -500, obj_fireball_4, 
	{
		theta: 1.9634954084936207 - ((sequence * pi) / 9) - 0.3490658503988659
	});
}
sequence += 1;
audio_play_sound(snd_fireball, 1, false);
image_index = 4;
alarm_set(3, 15);
if (sequence <= 5)
	alarm[2] = 2;
else
	sequence = 0;
