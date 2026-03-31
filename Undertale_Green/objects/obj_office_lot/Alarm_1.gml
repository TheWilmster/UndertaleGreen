global.msg[0] = "[character,alaska,happy][delay,1]* You going in,[freeze][delay,333][continue] Chai?[/page]";
global.msg[1] = "[character,chai,neutral][delay,1]* Yeah,[freeze][delay,333][continue] I just need to\n  talk to Olive.[freeze][delay,333][continue]\n* I'll be right in.[/page]";
global.msg[2] = "[character,alaska,neutral][delay,1]* Alright.[freeze][delay,333][continue] Make sure they\n  don't stay in the car\n  though.[/page]";
global.msg[3] = "[character,alaska,neutral][delay,1]* We shouldn't leave the\n  windows open.[officecont2]";
audio_play_sound(snd_rummage, 1, 0);
instance_create_depth(x, y, -1000, obj_textboxNEW);
