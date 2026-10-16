if (global.second_dia[5] == 0)
{
	DIALOG[0] = "[character,none,-1][delay,1]* The name's Roy.[delay,333]\n* Don't wear it out.[royslide]";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Me llamo Roy.[delay,333]\n* No lo pongas por ahí.[royslide]";
	roybit = true;
}
else
{
	DIALOG[0] = "[character,none,-1][delay,1]* The name's Jim.[delay,333]\n* Don't wear it out.";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Me llamo Jim.[delay,333]\n* No TE lo pongas por ahí.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
