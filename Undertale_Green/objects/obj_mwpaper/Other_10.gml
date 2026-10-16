if (global.forest_cutscene != 3)
{
	DIALOG[0] = "[character,none,-1][delay,1]* (They've locked the door.) [/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* (You hope there's another way\n  in.)";
}
else
{
	DIALOG[0] = "[character,none,-1][delay,1]* (...) [/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* (The door is still locked.)";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
