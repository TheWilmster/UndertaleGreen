if (obj_textboxNEW.choice == 0)
{
	progress = 1;
	instance_destroy(obj_textboxNEW);
}
else
{
	DIALOG[0] = "[character,none,-1]* You decide it looks too dark\n  in there anyway.";
	DIALOG_ESP[0] = "[character,none,-1]* Decides que se ve muy\n  tétrico de todas formas.";
}
show_debug_message(DIALOG);
