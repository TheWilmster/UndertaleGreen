if (obj_textboxNEW.choice == 0)
{
	if (array_length(global.inventory) >= 8)
	{
		DIALOG[0] = "[character,none,-1]* (You don't have enough room.)";
		DIALOG_ESP[0] = "[character,none,-1]* (No tienes suficiente espacio.)";
	}
	if (array_length(global.inventory) < 8)
	{
		DIALOG[0] = "[character,none,-1][additemcmuffin]* (You picked up the Chocolate\n  Muffin.)";
		DIALOG_ESP[0] = "[character,none,-1][additemcmuffin]* (Has adquirido la\n  Magdalena.)";
		global.items_collected[1] = 1;
		instance_destroy(self);
	}
}
else
{
	DIALOG[0] = "[character,none,-1]* (Don't want to ruin someone's\n  day.)";
	DIALOG_ESP[0] = "[character,none,-1]* (No quieres arruinarle el\n  día a alguien.)";
}
