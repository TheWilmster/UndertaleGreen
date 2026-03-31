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
		global.items_collected[3] = 1;
		instance_destroy(self);
	}
}
else
{
	global.msg[0] = "[character,none,-1]* (You leave the Jollypop behind.)";
	global.msg_esp[0] = "[character,none,-1]* (Dejas al caramelo atrás.)";
}
