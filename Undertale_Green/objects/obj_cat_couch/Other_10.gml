randomize();
rnd_noise = choose(1, 2, 3, 4);
if (global.second_dia[16] == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* There's a cat on this couch.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* Pet it?[choice]";
	global.choices[0] = "[character,none,-1]\nYes";
	global.choices[1] = "[character,none,-1]\nNo";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
else
{
	if (!audio_is_playing(snd_meow1) && !audio_is_playing(snd_meow2) && !audio_is_playing(snd_meow3) && !audio_is_playing(snd_meow4))
	{
		if (rnd_noise == 1)
			audio_play_sound(snd_meow1, 1, false);
		if (rnd_noise == 2)
			audio_play_sound(snd_meow2, 1, false);
		if (rnd_noise == 3)
			audio_play_sound(snd_meow3, 1, false);
		if (rnd_noise == 4)
			audio_play_sound(snd_meow4, 1, false);
	}
	obj_player.curr_state = PlayerState.NORMAL;
}
