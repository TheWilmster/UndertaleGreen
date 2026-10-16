global.talking = self;
global.save_photo = 23;
DIALOG[0] = "[character,none,-1][delay,1]* It's me Terry,[freeze][delay,333][continue] the second of\n  the Terror Triplets![/page]";
DIALOG[1] = "[character,none,-1]* We rule this theater with an\n  iron fist!";
DIALOG_ESP[0] = "[character,none,-1][delay,1]* ¡Soy yo Terry,[freeze][delay,333][continue] el segundo del\n  Trio del Terror![/page]";
DIALOG_ESP[1] = "[character,none,-1]* ¡Este teatro se arrodilla\n  ante nosotros!";
instance_create_depth(x, y, -1000, obj_textboxNEW);
