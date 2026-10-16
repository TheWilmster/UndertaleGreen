if (neckdialogue == false)
{
	DIALOG[0] = "[character,chai,disappointed][delay,1]* Took you long enough.[/page]";
	DIALOG[1] = "[character,chai,neutral][delay,1]* Get in the back seat,[freeze][delay,333][continue]\n  alright?[freeze][delay,333][continue] It's gonna be a\n  little cramped.[/page]";
	DIALOG[2] = "[character,chai,remorseful][delay,1]* ...[/page]";
	DIALOG[3] = "[character,chai,remorseful][delay,1]* Sorry.[carnightcut]";
	DIALOG_ESP[0] = "[character,chai,disappointed][delay,1]* Has tardado bastante.[/page]";
	DIALOG_ESP[1] = "[character,chai,neutral][delay,1]* Siéntate atrás,[freeze][delay,333][continue]\n  ¿vale?[freeze][delay,333][continue] It's gonna be a\n  little cramped.[/page]";
	DIALOG_ESP[2] = "[character,chai,remorseful][delay,1]* ...[/page]";
	DIALOG_ESP[3] = "[character,chai,remorseful][delay,1]* Lo siento.[carnightcut]";
}
else
{
	DIALOG[0] = "[character,chai,disappointed][delay,1]* Took you long enough.[/page]";
	DIALOG[1] = "[character,chai,neutral][delay,1]* Get in the back seat,[freeze][delay,333][continue]\n  alright?[freeze][delay,333][continue] It's gonna be a\n  little cramped.[/page]";
	DIALOG[2] = "[character,chai,neutral][delay,1]* ...[/page]";
	DIALOG[3] = "[character,chai,disappointed][delay,1]* Eden's house?[freeze][delay,333][continue]\n* A necklace?[/page]";
	DIALOG[4] = "[character,chai,remorseful][delay,1]* Not now,[freeze][delay,333][continue] Olive.[/page]";
	DIALOG[5] = "[character,chai,neutral][delay,1]* You'll have to find\n  someone else to take\n  you.[/page]";
	DIALOG[6] = "[character,chai,remorseful][delay,1]* Just get in,[freeze][delay,333][continue] alright?[carnightcut]";
	DIALOG_ESP[0] = "[character,chai,disappointed][delay,1]* Has tardado bastante.[/page]";
	DIALOG_ESP[1] = "[character,chai,neutral][delay,1]* Siéntate atrás,[freeze][delay,333][continue]\n  ¿vale?[freeze][delay,333][continue] It's gonna be a\n  little cramped.[/page]";
	DIALOG_ESP[2] = "[character,chai,remorseful][delay,1]* ...[/page]";
	DIALOG_ESP[3] = "[character,chai,disappointed][delay,1]* ¿La casa de Eden?[freeze][delay,333][continue]\n* ¿Un collar?[/page]";
	DIALOG_ESP[4] = "[character,chai,remorseful][delay,1]* Ahora no,[freeze][delay,333][continue] Olive.[/page]";
	DIALOG_ESP[5] = "[character,chai,neutral][delay,1]* Vas a tener que\n  encontrar a otro que\n  te lleve.[/page]";
	DIALOG_ESP[6] = "[character,chai,remorseful][delay,1]* Siéntate ya,[freeze][delay,333][continue] ¿vale?[carnightcut]";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
