if (rat_came_out == true)
{
	DIALOG[0] = "[character,none,-1]* This rat looks like it knows\n  its way around.[/page]";
	DIALOG[1] = "[character,none,-1]* Hop on its back?[choice]";
	DIALOG_ESP[0] = "[character,none,-1]* Esta rata parece que sabe\n  como manejarse por aquí.[/page]";
	DIALOG_ESP[1] = "[character,none,-1]* ¿Te montas encima?[choice]";
	global.choices[0] = "[character,none,-1]\nYes";
	global.choices[1] = "[character,none,-1]\nNo";
	global.choices_esp[0] = "[character,none,-1]\nSí";
	global.choices_esp[1] = "[character,none,-1]\nNo";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
else
{
	obj_player.curr_state = PlayerState.NORMAL;
}
