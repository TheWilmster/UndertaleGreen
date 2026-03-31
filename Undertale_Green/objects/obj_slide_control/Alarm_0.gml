if (obj_player.x < 210)
	obj_nerdguy.hspeed = 0.3;
if (obj_player.x >= 210)
	obj_nerdguy.hspeed = -0.3;
audio_play_sound(snd_slidewhist, 80, false);
