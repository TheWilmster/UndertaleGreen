if (obj_textboxNEW.choice == 0)
{
	if (array_length(global.inventory) >= 8)
	{
		DIALOG[0] = "[character,none,-1]* (You don't have enough room.)";
		DIALOG_ESP[0] = "[character,none,-1]* (No tienes suficiente espacio.)";
	}
	if (array_length(global.inventory) < 8)
	{
		DIALOG[0] = "[character,none,-1][additemnecklace]* (You picked up the Necklace.)";
		global.items_collected[2] = 1;
		instance_destroy(self);
	}
}
else
{
	DIALOG[0] = "[character,none,-1]* (You leave the Necklace\n  behind.)";
}
