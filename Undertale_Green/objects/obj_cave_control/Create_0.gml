obj_player.visible = false;
obj_player.curr_state = PlayerState.CUTSCENE;
audio_sound_gain(mus_ebott, 0, 3000);
audio_sound_gain(snd_wind_ambience, 0.2, 1000);
alarm[0] = 65;
