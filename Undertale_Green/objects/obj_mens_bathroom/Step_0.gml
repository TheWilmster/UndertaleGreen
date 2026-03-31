if (global.bathroom_order == 0 || global.bathroom_order == 1)
{
	if (!instance_exists(obj_textboxNEW) && progress == 0)
	{
		audio_sound_gain(mus_art_center, 0, 0);
		if (timer < 10)
		{
			timer++;
		}
		else
		{
			audio_play_sound(snd_gooddoor, 80, false);
			progress = 1;
			timer = 0;
		}
	}
	if (!audio_is_playing(snd_gooddoor) && progress == 1)
	{
		if (timer < 20)
		{
			timer++;
		}
		else
		{
			global.msg[0] = "[character,none,-1]* Not bad![delay,333] It had a nice ring\n  to it.";
			global.msg_esp[0] = "[character,none,-1]* ¡Nada mal![delay,333] Te gusta su\n  sonoridad.";
			if (!instance_exists(obj_textboxNEW))
			{
				audio_sound_gain(mus_art_center, 1, 100);
				instance_create_depth(x, y, -1000, obj_textboxNEW);
			}
			progress = -1;
		}
	}
}
if (global.bathroom_order == 2)
{
	if (!instance_exists(obj_textboxNEW) && progress == 0)
	{
		audio_sound_gain(mus_art_center, 0, 0);
		if (timer < 10)
		{
			timer++;
		}
		else
		{
			audio_play_sound(snd_baddoor, 80, false);
			progress = 1;
			timer = 0;
		}
	}
	if (!audio_is_playing(snd_baddoor) && progress == 1)
	{
		if (timer < 20)
		{
			timer++;
		}
		else
		{
			global.msg[0] = "[character,none,-1]* Terrible...[delay,333] Whoever made this\n  door should be ashamed.";
			global.msg_esp[0] = "[character,none,-1]* Terrible...[delay,333] Quien haya hecho\n  esta puerta debería\n  avergonzarse.";
			if (!instance_exists(obj_textboxNEW))
			{
				audio_sound_gain(mus_art_center, 1, 100);
				instance_create_depth(x, y, -1000, obj_textboxNEW);
			}
			progress = -1;
		}
	}
}
