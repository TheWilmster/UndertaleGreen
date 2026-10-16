if (global.basement_photo == 0)
{
	DIALOG[0] = "[character,none,-1][delay,1]* You want to draw something.[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* What kind of drawing will it\n  be?[choice]";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Quieres dibujar algo.[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* ¿Qué tipo de dibujo será?[choice]";
	global.choices[0] = "[character,none,-1]\nCute";
	global.choices[1] = "[character,none,-1]\nYucky";
	global.choices_esp[0] = "[character,none,-1]\nMono";
	global.choices_esp[1] = "[character,none,-1]\nFeo";
}
if (global.basement_photo == 2)
{
	DIALOG[0] = "[character,none,-1][delay,1]* (You decide to look away.)[delay,333]\n* (Its eyes look sad.)";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* (Decides no mirar.)[delay,333]\n* (sus ojos denotan tristeza.)";
}
if (global.basement_photo == 1)
{
	DIALOG[0] = "[character,none,-1][delay,1]* (You look upon your work\n  with pride.)[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* (Something tells you it won't\n  last long.)";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* (Miras a tu trabajo con\n  mucho orgullo.)[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* (Algo te dice que no\n  va a durar mucho.)";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
