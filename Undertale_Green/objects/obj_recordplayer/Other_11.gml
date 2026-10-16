if (obj_textboxNEW.choice == 0)
{
	progress = 1;
	instance_destroy(obj_textboxNEW);
}
else
{
	DIALOG[0] = "[character,none,-1]* (You don't feel like\n  dancing.)";
}
show_debug_message(DIALOG);
