if (global.school_time_sequence != 3)
{
	DIALOG[0] = "[character,none,-1][delay,1]* You knock on the door.[destroy]";
	DIALOG[1] = "[character,none,-1][delay,4444]";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Pegas a la puerta.[destroy]";
	DIALOG_ESP[1] = "[character,none,-1][delay,4444]";
}
else
{
	DIALOG[0] = "[character,none,-1][delay,1]* You're scared to knock on\n  the door.";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Te asusta pegar a la\n  puerta.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
if (global.bathroom_order == 0)
	global.bathroom_order = 2;
if (global.school_time_sequence != 3)
	progress = 0;
