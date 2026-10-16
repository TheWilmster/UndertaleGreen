if (global.chai_entered == false)
{
	DIALOG[0] = "[character,none,-1][delay,1]* Sit on the bench?[choice]";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* ¿Te sientas?[choice]";
	global.choices[0] = "[character,none,-1]\nYes";
	global.choices[1] = "[character,none,-1]\nNo";
	global.choices_esp[0] = "[character,none,-1]\nSí";
	global.choices_esp[1] = "[character,none,-1]\nNo";
}
if (global.chai_entered == true)
{
	DIALOG[0] = "[character,none,-1][delay,1]* You'd rather play standing up.";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Preferirías jugar de pie.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
