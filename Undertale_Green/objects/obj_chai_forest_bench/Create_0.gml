continue_talk = false;
walkaway = false;
depth = -bbox_bottom;
progress = -1;
timer = -1;
image_blend = c_gray;
image_speed = 0;
book_cutscene = 0;
page_drawing = -1;
page_activate = 0;
post1 = false;
post2 = false;
post3 = false;
post4 = false;
sitdown = false;
chaigetup = false;
hug = false;
hugend = false;
playguitar = false;
endgame_cutscene = false;
posthug = false;
if (global.has_battled == true && global.flag_flee == true)
{
	global.msg[0] = "[character,chai,smile][delay,1]* I'll be ready when\n  you want to battle\n  again,[freeze][delay,333][continue] Olive![fleefalse]";
	alarm_set(3, 20);
}
if (global.has_battled == true && global.flag_die == true)
{
	global.msg[0] = "[character,chai,smile][delay,1]* Nice try,[freeze][delay,333][continue] Olive![freeze][delay,333][continue]\n* You got it next time![diefalse]";
	alarm_set(3, 20);
}
if (global.has_battled == true && global.flag_win == true)
{
	endgame_cutscene = true;
	global.msg[0] = "[character,chai,smile][owsprite,chai,smile][delay,1]* So what did you win?[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* (You ask her what she means.)[/page]";
	global.msg[2] = "[character,chai,smile][delay,1]* Well,[freeze][delay,333][continue] you beat me fair\n  and square.[/page]";
	global.msg[3] = "[character,chai,smile][delay,1]* A hard fought battle\n  deserves some treasure.[/page]";
	global.msg[4] = "[character,none,-1][delay,1]* (You say she has to tell you a\n  secret.)[delay,333]\n* (That'd be a good reward.)[/page]";
	global.msg[5] = "[character,chai,miffed][owsprite,chai,look2][delay,1]* That's not...[/page]";
	global.msg[6] = "[character,chai,smile][owsprite,chai,smile][delay,1]* ...[freeze][delay,333][continue]Alright.[/page]";
	global.msg[7] = "[character,chai,miffed][delay,1]* Did you know that I...[/page]";
	global.msg[8] = "[character,chai,remorseful][owsprite,chai,look2][delay,1]* I used to see Dad\n  sometimes too?[/page]";
	global.msg[9] = "[character,none,-1][delay,1]* (Really?)[/page]";
	global.msg[10] = "[character,chai,blushsmile][delay,1]* Yeah.[freeze][delay,333][continue] Really.[pageactivate]";
	alarm_set(3, 20);
}
