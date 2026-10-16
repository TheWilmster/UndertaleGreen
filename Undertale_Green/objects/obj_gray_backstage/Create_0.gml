if (global.school_time_sequence == 3)
	instance_destroy(self);
shake = false;
startshake = false;
image_speed = 0;
progress = -1;
timer = -1;
depth = -bbox_bottom;
if (global.has_battled_gray == false)
{
	olive_resume = false;
}
else
{
	olive_resume = true;
	global.gray_fight_resume = true;
}
alarm[1] = 5;
if (global.has_battled == true && global.flag_flee == true)
{
	DIALOG[0] = "[character,gray,happy][delay,1]* You done playing,[freeze][delay,333][continue]\n  little Chai?[/page]";
	DIALOG[1] = "[character,gray,smug][owsprite,gray_bs,smug][delay,1]* No issue.[/page]";
	DIALOG[2] = "[character,gray,summin][owsprite,gray_bs,default][delay,1]* I'll be waiting here\n  for when you're ready\n  to lose.[fleefalse]";
	DIALOG_ESP[0] = "[character,gray,happy][delay,1]* ¿Te has cansado ya,[freeze][delay,333][continue]\n  mini-Chai?[/page]";
	DIALOG_ESP[1] = "[character,gray,smug][owsprite,gray_bs,smug][delay,1]* Sin problemo.[/page]";
	DIALOG_ESP[2] = "[character,gray,summin][owsprite,gray_bs,default][delay,1]* Estaré esperándote\n  para cuando quieras\n  volver a perder.[fleefalse]";
	alarm_set(0, 20);
}
if (global.has_battled == true && global.flag_die == true)
{
	DIALOG[0] = "[character,gray,happy][delay,1][owsprite,gray_bs,smug]* Heh,[freeze][delay,333][continue] take that,[freeze][delay,333][continue]\n  bishop![diefalse][/page]";
	DIALOG[1] = "[character,gray,smug][delay,1][owsprite,gray_bs,smile]* I'll be waiting here\n  if you want another\n  shot at victory.[diefalse]";
	DIALOG_ESP[0] = "[character,gray,happy][delay,1][owsprite,gray_bs,smug]* ¡Ja!,[freeze][delay,333][continue] ¡toma esa,[freeze][delay,333][continue] alfil![diefalse][/page]";
	DIALOG_ESP[1] = "[character,gray,smug][delay,1][owsprite,gray_bs,smile]* Te estaré esperando\n  si quieres otra\n  oportunidad para...[/page]";
	DIALOG_ESP[2] = "[character,gray,smug][delay,1][owsprite,gray_bs,smile]* ...intentar alcanzar la\n  victoria.[diefalse]";
	alarm_set(0, 20);
}
if (global.has_battled == true && global.flag_win == true)
{
	DIALOG[0] = "[character,gray,happy][delay,1][owsprite,gray_bs,smile]* I can't believe you\n  actually beat me.[/page]";
	DIALOG[1] = "[character,gray,smug][delay,1][owsprite,gray_bs,default]* Guess I got some tough\n  competition.[/page]";
	DIALOG[2] = "[character,gray,happy][delay,1]* Rehearsal is almost over\n  as well.[/page]";
	DIALOG[3] = "[character,gray,summin][delay,1]* About time for Chai to\n  show her face around\n  here.[/page]";
	DIALOG[4] = "[character,gray,happy][delay,1][owsprite,gray_bs,smile]* Come on.[freeze][delay,333][continue]\n* Let's go find your\n  sister.[winfalse][greentransition]";
	DIALOG_ESP[0] = "[character,gray,happy][delay,1][owsprite,gray_bs,smile]* No puedo creer que me\n  hayas derrotado.[/page]";
	DIALOG_ESP[1] = "[character,gray,smug][delay,1][owsprite,gray_bs,default]* Supongo que eres\n  bastante persistente.[/page]";
	DIALOG_ESP[2] = "[character,gray,happy][delay,1]* El ensayo está casi\n  por terminar,[freeze][delay,333][continue] también.[/page]";
	DIALOG_ESP[3] = "[character,gray,summin][delay,1]* Chai debería de\n  aparecer por algún lugar\n  en cuestión de segundos.[/page]";
	DIALOG_ESP[4] = "[character,gray,happy][delay,1][owsprite,gray_bs,smile]* Venga,[freeze][delay,333][continue] vamos.[freeze][delay,333][continue]\n* Tenemos que encontrar\n  a tu hermana.[winfalse][greentransition]";
	alarm_set(0, 20);
}
