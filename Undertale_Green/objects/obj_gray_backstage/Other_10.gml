if (olive_resume == false)
{
	audio_sound_gain(mus_art_center, 0, 500);
	obj_player.curr_state = PlayerState.INTERACT;
	alarm[2] = 20;
}
if (olive_resume == true)
{
	global.msg[0] = "[character,gray,smug][delay,1]* Alright little Chai,[freeze][delay,333][continue]\n  let's do this.[/page][battle,gray]";
	global.msg_esp[0] = "[character,gray,smug][delay,1]* Anda,[freeze][delay,333][continue] venga,[freeze][delay,333][continue] vamos al\n  grano mini-Chai.[/page][battle,gray]";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
