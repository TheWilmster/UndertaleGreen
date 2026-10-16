if (global.office_cutscene == false)
{
	DIALOG[0] = "[character,none,-1][delay,5]* It's Chai's car.[/page]";
	DIALOG[1] = "[character,none,-1][delay,5]* You think about how cool you'd\n  be if you could drive.[/page]";
	DIALOG[2] = "[character,none,-1][delay,5]* You vow to get an even cooler\n  car than your sister.[/page]";
	DIALOG[3] = "[character,none,-1][delay,5]* Maybe then she'll hang out\n  with you.";
	DIALOG_ESP[0] = "[character,none,-1][delay,5]* Es el coche de Chai.[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,5]* Piensas cómo te admirarían\n con un coche como este.[/page]";
	DIALOG_ESP[2] = "[character,none,-1][delay,5]* Te juras comprarte algún día\n  un coche mejor que este.[/page]";
	DIALOG_ESP[3] = "[character,none,-1][delay,5]* A lo mejor tu hermana\n  quedaría contigo.";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
