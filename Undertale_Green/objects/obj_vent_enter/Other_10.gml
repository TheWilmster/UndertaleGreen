if (global.school_time_sequence != 3)
{
	DIALOG[0] = "[character,none,-1][delay,1]* This vent looks conveniently\n  Olive-sized.[/page]";
	DIALOG[1] = "[character,none,-1]* Go inside?[choice]";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Este ducto parece estar\n  hecho a medida Olive.[/page]";
	DIALOG_ESP[1] = "[character,none,-1]* ¿Meterte?[choice]";
	global.choices[0] = "[character,none,-1]\nYes";
	global.choices[1] = "[character,none,-1]\nNo";
	global.choices_esp[0] = "[character,none,-1]\nSí";
	global.choices_esp[1] = "[character,none,-1]\nNo";
}
else
{
	DIALOG[0] = "[character,none,-1][delay,1]* Looks like it's sealed shut.";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Parece estar bien cerrado.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
