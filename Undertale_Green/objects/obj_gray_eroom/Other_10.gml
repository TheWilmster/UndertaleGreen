if (global.eden_dance == false)
{
	DIALOG[0] = "[character,gray,bhsmug][owsprite,edengray,5][delay,1]* Hey there little Chai.[freeze][delay,333][continue]\n* Nice of you to stop\n  by.[/page]";
	DIALOG[1] = "[character,eden,bedangry][owsprite,edengray,3][delay,1]* Is it now?[/page]";
	DIALOG[2] = "[character,gray,bhsmugl][owsprite,edengray,1][delay,1]* You don't think so?[/page]";
	DIALOG[3] = "[character,eden,distressed][delay,1]* No I do,[freeze][delay,333][continue] it's just\n  that earlier you-[/page]";
	DIALOG[4] = "[character,gray,bhsmug][owsprite,edengray,5][delay,1]* Wow.[freeze][delay,333][continue] Little Chai I'm\n  sorry,[freeze][delay,333][continue] I didn't know she\n  didn't want you here.[/page]";
	DIALOG[5] = "[character,eden,distressed][delay,1]* That's not true![freeze][delay,333][continue]\n* Olive,[freeze][delay,333][continue] I'm very happy\n  that-[/page]";
	DIALOG[6] = "[character,gray,bhsmug][delay,1]* The nerve of some\n  people,[freeze][delay,333][continue] am I right?";
}
if (global.eden_dance == true)
	DIALOG[0] = "[character,gray,bhsmug][delay,1]* Nice tunes,[freeze][delay,333][continue] little Chai.";
instance_create_depth(x, y, -1000, obj_textboxNEW);
