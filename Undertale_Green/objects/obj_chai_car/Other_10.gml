if (global.school_time_sequence != 3)
{
	DIALOG[0] = "[character,none,-1][delay,1]* It's Chai's car.[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* You think about how cool you'd\n  be if you could drive.[/page]";
	DIALOG[2] = "[character,none,-1][delay,1]* You vow to get an even cooler\n  car than your sister.[/page]";
	DIALOG[3] = "[character,none,-1][delay,1]* Maybe then she'd hang out\n  with you.";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Es el coche de Chai.[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* áéíóúñ";
	global.save_photo = 3;
}
else
{
	DIALOG[0] = "[character,none,-1][delay,1]* Chai's friends have filled\n  every seat in the car.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
