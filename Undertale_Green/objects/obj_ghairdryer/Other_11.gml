if (obj_textboxNEW.choice == 0)
{
	DIALOG[0] = "[character,none,-1]* You use the dryer and its\n  power cord like a bow and\n  arrow.[/page]";
	DIALOG[1] = "[character,none,-1]* ...![delay,333] It was unplugged.[/page]";
	DIALOG[2] = "[character,none,-1]* You nock the power outlet\n  again.";
	DIALOG_ESP[0] = "[character,none,-1]* Utilizas el secador y\n  decides utilizar su cable\n  como un arco.[/page]";
	DIALOG_ESP[1] = "[character,none,-1]* ¡...![delay,333] Lo has desenchufado.[/page]";
	DIALOG_ESP[2] = "[character,none,-1]* Vuelves a enchufar el cable.";
}
else
{
	DIALOG[0] = "[character,none,-1]* Probably for the best.";
	DIALOG_ESP[0] = "[character,none,-1]* Seguramente sea lo mejor.";
}
show_debug_message(DIALOG);
