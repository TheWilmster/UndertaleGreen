if (obj_trashcan.image_index == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* It's a trash can.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* No one is in it.";
}
if (obj_trashcan.image_index != 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* It's a trash can.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* No one is in it?";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
