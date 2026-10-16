if (obj_textboxNEW.choice == 0)
{
	if (array_length(global.inventory) >= 8)
		DIALOG[0] = "[character,none,-1]* (You don't have enough room.)";
	if (array_length(global.inventory) < 8)
	{
		DIALOG[0] = "[character,none,-1][additemblueberry]* (You picked up the\n  Blueberries.)";
		global.blueberry_bush_attained = true;
		instance_destroy(self);
	}
}
else
{
	DIALOG[0] = "[character,none,-1]* (Somebody else can eat them.)";
}
