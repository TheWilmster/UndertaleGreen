if (obj_textboxNEW.choice == 0)
{
	DIALOG[0] = "[character,kaitlyn,faded][delay,1]* Alright,[freeze][delay,333][continue] let's go.[warptooffice]";
	DIALOG_ESP[0] = "[character,kaitlyn,faded][delay,1]* Seguro,[freeze][delay,333][continue] vayámonos.[warptooffice]";
}
else
{
	DIALOG[0] = "[character,kaitlyn,faded][delay,1]* Let me know when\n  you're ready.";
	DIALOG_ESP[0] = "[character,kaitlyn,faded][delay,1]* Dime cuando quieras\n  irte,[freeze][delay,333][continue] te espero.";
}
