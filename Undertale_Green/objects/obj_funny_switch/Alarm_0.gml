global.msg[0] = "[character,none,-1][delay,1]* (Congratulations!)[delay,333]\n* (You hit the blue switch.)";
instance_create_depth(x, y, -1000, obj_textboxNEW);
audio_play_sound(snd_dumbvictory, 80, false);
