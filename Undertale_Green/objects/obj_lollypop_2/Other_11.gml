if (obj_textboxNEW.choice == 0)
{
	if (array_length(global.inventory) >= 8)
	{
		DIALOG[0] = "[character,none,-1]* (You don't have enough room.)";
		DIALOG_ESP[0] = "[character,none,-1]* (No tienes suficiente espacio.)";
	}
	if (array_length(global.inventory) < 8)
	{
		DIALOG[0] = "[character,none,-1][additemjollypop]* (You picked up the\n  Jollypop.)";
		DIALOG_ESP[0] = "[character,none,-1][additemjollypop]* (Has tomado el caramelo.)";
		global.items_collected[3] = 1;
		instance_destroy(self);
	}
}
else
{
	DIALOG[0] = "[character,none,-1]* (You leave the Jollypop behind.)";
	DIALOG_ESP[0] = "[character,none,-1]* (Dejas al caramelo atrás.)";
}
