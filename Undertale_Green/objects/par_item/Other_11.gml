if (obj_textboxNEW.choice == 0)
{
	if (array_length(global.inventory) >= 8)
		DIALOG[0] = "[character,none,-1]* (You don't have enough room.)";
	if (array_length(global.inventory) < 8)
	{
		DIALOG[0] = "[character,none,-1][additemblueberry]* (You picked up the Blueberries.)";
		instance_destroy(self);
	}
}
else
{
	DIALOG[0] = "[character,none,-1]* (You didn't pick up the\n  Blueberries.)";
}
