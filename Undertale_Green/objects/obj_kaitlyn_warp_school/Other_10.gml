if (eden_warptoggle == true)
{
	DIALOG[0] = "[character,kaitlyn,faded][delay,1]* What's that?[/page]";
	DIALOG[1] = "[character,kaitlyn,faded][delay,1]* You wanna go to Miss\n  Nepotism's house?[/page]";
	DIALOG[2] = "[character,kaitlyn,faded][delay,1]* Why the hell would I\n  take you there?[/page]";
	DIALOG[3] = "[character,kaitlyn,faded][delay,1]* ...[freeze][delay,333][continue]A necklace?[/page]";
	DIALOG[4] = "[character,kaitlyn,faded][delay,1]* Ugh,[freeze][delay,333][continue] fine.[freeze][delay,333][continue]\n* I guess it's pretty\n  close to the school.[/page]";
	DIALOG[5] = "[character,kaitlyn,faded][delay,1]* Next time you see Chai\n  tell her she owes me.[warptoeden]";
	DIALOG_ESP[0] = "[character,kaitlyn,faded][delay,1]* ¿Y eso?[/page]";
	DIALOG_ESP[1] = "[character,kaitlyn,faded][delay,1]* Quieres ir a donde\n  Señorita Nepotista?[/page]";
	DIALOG_ESP[2] = "[character,kaitlyn,faded][delay,1]* ¿Por qué te llevaría\n  ahí jamás?[/page]";
	DIALOG_ESP[3] = "[character,kaitlyn,faded][delay,1]* ...[freeze][delay,333][continue]¿Un collar?[/page]";
	DIALOG_ESP[4] = "[character,kaitlyn,faded][delay,1]* Arg,[freeze][delay,333][continue] vale.[freeze][delay,333][continue]\n* Supongo que queda cerca\n  de la escuela.[/page]";
	DIALOG_ESP[5] = "[character,kaitlyn,faded][delay,1]* Cuando veas a Chai\n  dile que me debe una.[warptoeden]";
	for (var i = 0; i < array_length(global.inventory); i += 1)
	{
		if (global.inventory[i].label == global.itemlist.necklace.label)
			array_delete(global.inventory, i, 1);
	}
}
else
{
	DIALOG[0] = "[character,kaitlyn,faded][delay,1]* Olive...?[/page]";
	DIALOG[1] = "[character,kaitlyn,faded][delay,1]* Do you want to ride\n  with me?[/page]";
	DIALOG[2] = "[character,kaitlyn,faded][delay,1]* I'm going to the\n  school.[choice]";
	DIALOG_ESP[0] = "[character,kaitlyn,faded][delay,1]* ¿Olive...?[/page]";
	DIALOG_ESP[1] = "[character,kaitlyn,faded][delay,1]* ¿Te vienes conmigo?[/page]";
	DIALOG_ESP[2] = "[character,kaitlyn,faded][delay,1]* Yo voy a la\n  escuela.[choice]";
}
global.choices[0] = "[character,kaitlyn,faded]\nSure";
global.choices[1] = "[character,kaitlyn,faded]\nNo";
global.choices_esp[0] = "[character,kaitlyn,faded]\nVale";
global.choices_esp[1] = "[character,kaitlyn,faded]\nNo";
instance_create_depth(x, y, -1000, obj_textboxNEW);
