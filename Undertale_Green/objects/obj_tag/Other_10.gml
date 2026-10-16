global.talking = self;
global.save_photo = 14;
if (global.second_dia[2] == 0)
{
	DIALOG[0] = "[character,none,-1][delay,1]* Tag![freeze][delay,333][continue]\n* You're it!";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* ¡Ja ja![freeze][delay,333][continue]\n* ¡Te he pillado!";
}
else
{
	DIALOG[0] = "[character,none,-1][delay,1]* Oh.[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* You got me.[/page]";
	DIALOG[2] = "[character,none,-1][delay,1]* Guess I shoulda moved.";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Oh.[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* Me has pillado.[/page]";
	DIALOG_ESP[2] = "[character,none,-1][delay,1]* Debería de haber dicho que\n  no vale chicle.";
}
global.second_dia[2] = 1;
instance_create_depth(x, y, -1000, obj_textboxNEW);
