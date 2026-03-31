if (global.school_time_sequence == 3)
	instance_destroy(self);
if (global.eden_gone == true)
	instance_destroy(self);
if (global.eden_first_time == false)
{
	x = 304;
	y = 72;
	sprite_index = spr_eden_stand;
}
if (global.gray_leave_lobby == true && global.battle_eden == false)
	image_index = 4;
if (global.gray_leave_lobby == true && global.battle_eden == true)
	image_index = 0;
if (global.has_battled == true && global.flag_flee == true)
{
	global.msg[0] = "[character,eden,sly][delay,1]* Couldn't handle my\n  moves,[freeze][delay,333][continue] huh?[/page]";
	global.msg[1] = "[character,eden,joyous][owsprite,eden,happy][delay,1]* Let me know if you\n  want to try again![fleefalse]";
	alarm_set(0, 20);
}
if (global.has_battled == true && global.flag_die == true)
{
	global.msg[0] = "[character,eden,sly][delay,1]* Looks like I win this\n  round![/page]";
	global.msg[1] = "[character,eden,joyous][owsprite,eden,happy][delay,1]* Let me know if you\n  want to try again![diefalse]";
	alarm_set(0, 20);
}
if (global.has_battled == true && global.flag_win == true)
{
	global.msg[0] = "[character,eden,dramatic][owsprite,eden,dramatic][delay,1][spotlighton]* Goodbye,[freeze][delay,333][continue] cruel world![/page]";
	global.msg[1] = "[character,eden,dramatic][delay,1]* I can see the light-[freeze][delay,333][continue]\n* It's blinding![/page]";
	global.msg[2] = "[character,eden,dramatic][delay,1]* Tell my family...[freeze][delay,333][continue]\n* Tell them...[/page]";
	global.msg[3] = "[character,eden,dead][owsprite,eden,dead1][delay,1]* .[delay,100].[delay,200].[/page]";
	global.msg[4] = "[character,eden,dead][delay,1]* .[delay,333].[delay,500].[delay,750].[delay,1000].[/page]";
	global.msg[5] = "[character,eden,deadeye][owsprite,eden,dead2][delay,1]* ...[/page]";
	global.msg[6] = "[character,none,-1][owsprite,eden,dead3][delay,1]* (You tell Eden to chill out.)[/page]";
	global.msg[7] = "[character,eden,flustered][delay,1][owsprite,eden,unammused][spotlightoff]* Ahem.[/page]";
	global.msg[8] = "[character,eden,flustered][delay,1]* I may have gotten a\n  bit carried away...[/page]";
	global.msg[9] = "[character,eden,flustered][delay,1]* ...[/page]";
	global.msg[10] = "[character,eden,cluckin][owsprite,eden,default][delay,1][start_play_music]* Can you do me a favor\n  and not tell Gray\n  about this?[/page]";
	global.msg[11] = "[character,none,-1][delay,1]* (You ask her who Gray is.)[/page]";
	global.msg[12] = "[character,eden,happy][owsprite,eden,shocked][delay,1]* No one![freeze][delay,333][continue]\n* Forget I said anything,[freeze][delay,333][continue]\n  alright?[/page]";
	global.msg[13] = "[character,eden,flustered][owsprite,eden,default][delay,1]* (Thank the stars,[freeze][delay,333][continue] I was\n  never going to hear the\n  end of that...)[/page]";
	global.msg[14] = "[character,eden,happy][owsprite,eden,shocked][delay,1]* ...[/page]";
	global.msg[15] = "[character,eden,happy][delay,1]* Do you still want to\n  find your sister?[/page]";
	global.msg[16] = "[character,eden,sad][owsprite,eden,default][delay,1]* I really want to help,\n  but my dad wants me in\n  this next scene.[/page]";
	global.msg[17] = "[character,eden,joyous][owsprite,eden,shocked][delay,1]* ...Maybe I could give\n  you my keycard![/page]";
	global.msg[18] = "[character,eden,happy][delay,1]* She's probably\n  backstage.[freeze][delay,333][continue] You'll need\n  one to get there.[/page]";
	global.msg[19] = "[character,eden,joyous][delay,1]* Just use this on the\n  door in the greenroom.[/page]";
	global.msg[20] = "[character,eden,happy][delay,1]* And if you get scared\n  again,[freeze][delay,333][continue] I'll be back\n  later.[/page]";
	global.msg[21] = "[character,none,-1][delay,1][additemkeycard]* (You got the keycard.)[winfalse][edenleave]";
	alarm_set(0, 40);
}
if (y > 75)
	depth = -500;
else
	depth = -bbox_bottom;
progress = -1;
timer = -1;
