if (obj_textboxNEW.choice == 0)
{
	DIALOG[0] = "[character,none,-1]* You wave it around like a\n  sword.";
	DIALOG_ESP[0] = "[character,none,-1]* Juegas con ella como si\n  de una espada se tratase.";
}
else
{
	DIALOG[0] = "[character,none,-1]* Now's not the time for fun.";
	DIALOG_ESP[0] = "[character,none,-1]* No hay diversión que tener\n  en estos momentos.";
}
show_debug_message(DIALOG);
