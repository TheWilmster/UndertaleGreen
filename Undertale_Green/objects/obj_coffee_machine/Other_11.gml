if (obj_textboxNEW.choice == 0)
{
	DIALOG[0] = "[character,none,-1]* Too bad.[delay,333]\n* Should've been taller.";
	DIALOG_ESP[0] = "[character,none,-1]* Muy mal.[delay,333]\n* Haber medido más .";
}
else
{
	DIALOG[0] = "[character,none,-1]* Good choice.";
	DIALOG_ESP[0] = "[character,none,-1]* Buena opción.";
}
show_debug_message(DIALOG);
