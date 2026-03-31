randomize();
spawn3 += 1;
if (spawn3 == spawn3_jump)
{
	instance_create_depth(420, 260, -500, obj_fireball_new, 
	{
		largejump_toggle: true,
		largejump: largejump_order[0]
	});
	spawn3 = 0;
	spawn3_jump = choose(1, 2);
	array_push(largejump_order, largejump_order[0]);
	array_delete(largejump_order, 0, 1);
}
else
{
	instance_create_depth(420, 260, -500, obj_fireball_new, 
	{
		largejump_toggle: false
	});
}
audio_play_sound(snd_fireball, 1, false, 0.6);
image_index = 4;
alarm_set(3, 10);
alarm_set(2, 22);
