DIALOG[0] = "[character,none,-1][delay,1]* It's a nice-looking sink.[/page]";
DIALOG[1] = "[character,none,-1]* Turn it on?[choice]";
DIALOG_ESP[0] = "[character,none,-1][delay,1]* Se ve bien este grifo.[/page]";
DIALOG_ESP[1] = "[character,none,-1]* ¿Lo pones?[choice]";
global.choices[0] = "[character,none,-1]\nYes";
global.choices[1] = "[character,none,-1]\nNo";
global.choices_esp[0] = "[character,none,-1]\nSí";
global.choices_esp[1] = "[character,none,-1]\nNo";
instance_create_depth(x, y, -1000, obj_textboxNEW);
