global.talking = self;
DIALOG[0] = "[character,none,-1][delay,1]* Shh![/page]";
DIALOG[1] = "[character,none,-1][delay,1]* Don't be so loud![/page]";
DIALOG[2] = "[character,none,-1][delay,1]* I'm hiding from my bully.";
DIALOG_ESP[0] = "[character,none,-1][delay,1]* ¡Shh![/page]";
DIALOG_ESP[1] = "[character,none,-1][delay,1]* ¡No hagas tanto ruido![/page]";
DIALOG_ESP[2] = "[character,none,-1][delay,1]* Me estoy escondiendo de\n  mi acosador.";
instance_create_depth(x, y, -1000, obj_textboxNEW);
