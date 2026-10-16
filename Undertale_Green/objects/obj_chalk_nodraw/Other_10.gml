if (global.basement_photo == 0)
{
	DIALOG[0] = "[character,none,-1][delay,1]* You want to draw something.[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* ...It looks like this area's\n  already full.";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Quieres dibujar algo.[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* ...Pero este area está ya\n  ocupada por muchos dibujos.";
}
else
{
	DIALOG[0] = "[character,none,-1][delay,1]* Looks like there's no more\n  room to draw.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
