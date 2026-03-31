if (global.school_time_sequence != 3)
{
	global.msg[0] = "[character,none,-1][delay,1]* Go inside?[choice]";
	global.choices[0] = "[character,none,-1]\nYes";
	global.choices[1] = "[character,none,-1]\nNo";
	global.msg_esp[0] = "[character,none,-1][delay,1]* ¿Meterte?[choice]";
	global.choices_esp[0] = "[character,none,-1]\nSí";
	global.choices_esp[1] = "[character,none,-1]\nNo";
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* The vent looks too dark to\n  navigate.";
	global.msg_esp[0] = "[character,none,-1]* Se ve muy oscura para\n  poder meterte.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
