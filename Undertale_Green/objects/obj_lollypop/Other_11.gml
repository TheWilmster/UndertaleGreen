if (obj_textboxNEW.choice == 0)
{
	if (array_length(global.inventory) >= 8)
	{
		global.msg[0] = "[character,none,-1]* (You don't have enough room.)";
		global.msg_esp[0] = "[character,none,-1]* (No tienes suficiente espacio.)";
	}
	if (array_length(global.inventory) < 8)
	{
		global.msg[0] = "[character,none,-1][additemjollypop]* (You picked up the\n  Jollypop.)";
		global.msg_esp[0] = "[character,none,-1][additemjollypop]* (Has tomado el caramelo.)";
		global.jollypop_attained = true;
		instance_destroy(self);
	}
}
else
{
	global.msg[0] = "[character,none,-1]* (You leave the Jollypop behind.)";
	global.msg_esp[0] = "[character,none,-1]* (Has tirado el caramelo al suelo.)";
}
