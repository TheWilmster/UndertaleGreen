DIALOG[0] = "[character,none,-1][delay,5]* Hey kid.[/page]";
DIALOG[1] = "[character,none,-1]* Just finished my last scene.[/page]";
DIALOG[2] = "[character,none,-1]* ...[/page]";
DIALOG[3] = "[character,none,-1]* Hey if you got some time\n  to spare,[delay,333]\n* Wanna get a tarot reading?[/page]";
DIALOG[4] = "[character,none,-1]* I'm really good at it.[/page]";
DIALOG[5] = "[character,none,-1]* It's like getting your fortune read.[choice]";
global.choices[0] = "[character,none,-1]\nSure!";
global.choices[1] = "[character,none,-1]\nNah...";
instance_create_depth(x, y, -1000, obj_textboxNEW);
