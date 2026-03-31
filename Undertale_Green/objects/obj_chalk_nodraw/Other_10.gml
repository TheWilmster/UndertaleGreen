if (global.basement_photo == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* You want to draw something.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* ...It looks like this area's\n  already full.";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Quieres dibujar algo.[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* ...Pero este area está ya\n  ocupada por muchos dibujos.";
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* Looks like there's no more\n  room to draw.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
