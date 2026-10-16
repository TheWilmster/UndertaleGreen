if (obj_textboxNEW.choice == 0)
{
	global.save_photo = 5;
	progress = 1;
	instance_destroy(obj_textboxNEW);
}
else
{
	DIALOG[0] = "[character,none,-1]* (Maybe another time.)";
	DIALOG_ESP[0] = "[character,none,-1]* (A lo mejor más tarde.)";
}
