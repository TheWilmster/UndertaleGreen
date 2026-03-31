if (global.forest_cutscene != 3)
{
	global.msg[0] = "[character,none,-1][delay,1]* (They've locked the door.) [/page]";
	global.msg[1] = "[character,none,-1][delay,1]* (You hope there's another way\n  in.)";
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* (...) [/page]";
	global.msg[1] = "[character,none,-1][delay,1]* (The door is still locked.)";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
