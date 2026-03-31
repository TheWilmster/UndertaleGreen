function chai_text(arg0)
{
	if (arg0 >= 9)
	{
		global.msg[0] = "[battleface,chai,normal][c_black]...[freeze][delay,333][continue]Guess I'm outta\ndecrees.";
	}
	else
	{
		switch (arg0)
		{
			case 1:
				global.msg[0] = "[battleface,chai,normal][c_black]If I'm the queen\nit's only fair\nthat I get to\nmake the rules,[freeze][delay,333][continue]\nright?[/page]";
				global.msg[1] = "[battleface,chai,normal][c_black]Well,[freeze][delay,333][continue] as the\nruler of this\nuhh...[/page]";
				global.msg[2] = "[battleface,chai,unsure][c_black](We're in a\nkingdom,[freeze][delay,333][continue] right?)[/page]";
				global.msg[3] = "[battleface,chai,normal][c_black]As the ruler of\nthis kingdom,[freeze][delay,333][continue] my\nfirst decree is to\nmake me the richest\nperson in it![/page]";
				global.msg[4] = "[battleface,chai,normal][c_black]I'll use the\npower of...[freeze][delay,333][continue] a\nbunch of treasure\nor something to\ntake you out.[/page]";
				global.msg[5] = "[battleface,chai,smile][c_black]...[/page]";
				global.msg[6] = "[battleface,chai,smile][c_black]You won't be\nsmiling so wide\nonce I destroy\nyou with my\nfirst attack!";
				break;
			case 2:
				if (global.previous_soldier[0] == 1)
				{
					global.msg[0] = "[battleface,chai,normal][c_black]Real impressive\nfor a regular\nold bishop.[/page]";
					global.msg[1] = "[battleface,chai,normal][c_black]But you see,[freeze][delay,333][continue] the\ntrue power of\nroyalty doesn't lie in\ntheir strength.[/page]";
					global.msg[2] = "[battleface,chai,normal][c_black]It lies in the poor\npeople they pay to\nprotect them.[/page]";
					global.msg[3] = "[battleface,chai,normal][c_black]That's why for my\nnext decree I'll\nforce all my\nsubjects to help me![/page]";
					global.msg[4] = "[battleface,chai,normal][c_black]Come to me my\nroyal...[/page]";
					global.msg[5] = "[battleface,chai,unsure][c_black]Uhh...[/page]";
					global.msg[6] = "[battleface,chai,normal][c_black]My royal magician![freeze][delay,333][continue]\nUse a magic attack\nor something![snap]";
				}
				else if (global.previous_soldier[0] == 2)
				{
					global.msg[0] = "[battleface,chai,normal][c_black]Real impressive\nfor a regular\nold bishop.[/page]";
					global.msg[1] = "[battleface,chai,normal][c_black]But you see,[freeze][delay,333][continue] the\ntrue power of\nroyalty doesn't lie in\ntheir strength.[/page]";
					global.msg[2] = "[battleface,chai,normal][c_black]It lies in the poor\npeople they pay to\nprotect them.[/page]";
					global.msg[3] = "[battleface,chai,normal][c_black]That's why for my\nnext decree I'll\nforce all my\nsubjects to help me![/page]";
					global.msg[4] = "[battleface,chai,normal][c_black]Come to me my\nroyal...[/page]";
					global.msg[5] = "[battleface,chai,unsure][c_black]Uhh...[/page]";
					global.msg[6] = "[battleface,chai,normal][c_black]My royal wizard![freeze][delay,333][continue]\nCast a spell that\nmakes me win![snap]";
				}
				else if (global.previous_soldier[0] == 3)
				{
					global.msg[0] = "[battleface,chai,normal][c_black]Real impressive\nfor a regular\nold bishop.[/page]";
					global.msg[1] = "[battleface,chai,normal][c_black]But you see,[freeze][delay,333][continue] the\ntrue power of\nroyalty doesn't lie in\ntheir strength.[/page]";
					global.msg[2] = "[battleface,chai,normal][c_black]It lies in the poor\npeople they pay to\nprotect them.[/page]";
					global.msg[3] = "[battleface,chai,normal][c_black]That's why for my\nnext decree I'll\nforce all my\nsubjects to help me![/page]";
					global.msg[4] = "[battleface,chai,normal][c_black]Come to me my\nroyal...[/page]";
					global.msg[5] = "[battleface,chai,unsure][c_black]Uhh...[/page]";
					global.msg[6] = "[battleface,chai,normal][c_black]My royal jester![freeze][delay,333][continue]\nEntertain this\nbishop to death![snap]";
				}
				break;
			case 3:
				global.msg[0] = "[battleface,chai,normal][c_black]For my next decree,[freeze][delay,333][continue]\nI declare myself\nthe winner of this\nfight![/page]";
				global.msg[1] = "[battleface,chai,normal][c_black]...[freeze][delay,333][continue]Life isn't fair\neither,[freeze][delay,333][continue] bishop.[/page]";
				global.msg[2] = "[battleface,chai,normal][c_black]One of us has a\ncrown and the other\ndoesn't.";
				break;
			case 4:
				global.msg[0] = "[battleface,chai,normal][c_black]For my next decree\nI will banish all\nbakeries from this\ngreat kingdom![/page]";
				global.msg[1] = "[battleface,chai,normal][c_black]All the teenagers\nforced by their\nmothers to keep the\nbusiness afloat\nrejoice and applaud.";
				break;
			case 5:
				global.msg[0] = "[battleface,chai,normal][c_black]My next decree\nhereby banishes\nKaitlyn from the\nkingdom.[/page]";
				global.msg[1] = "[battleface,chai,normal][c_black]If you need a\nreason for that you\nclearly haven't met\nher.";
				break;
			case 6:
				global.msg[0] = "[battleface,chai,normal][c_black]For my next decree\nall nerds are to\nbe sent to the\ndungeon.[/page]";
				global.msg[1] = "[battleface,chai,normal][c_black]Why,[freeze][delay,333][continue] you ask?[freeze][delay,333][continue]\nFor the crime of\nbeing kind of\nannoying.[/page]";
				global.msg[2] = "[battleface,chai,normal][c_black]Woulda passed Mr.\nJohnson's class if\nWedge didn't remind\nhim there was\nhomework due.";
				break;
			case 7:
				global.msg[0] = "[battleface,chai,normal][c_black]My next decree\nrequires all\nmountains to have a\nbuilt-in elevator\nfrom now on.[/page]";
				global.msg[1] = "[battleface,chai,normal][c_black]If I have to\nwalk up there one\nmore time,[freeze][delay,333][continue] I'm\ngonna lose it.";
				break;
			case 8:
				global.msg[0] = "[battleface,chai,normal][c_black]For my next decree\nI will call upon\nmy soldiers to give\nOlivia her five\ndollars back.[/page]";
				global.msg[1] = "[battleface,chai,normal][c_black]...Oh,[freeze][delay,333][continue] she's the\ngirl in the yeti\ncostume.[/page]";
				global.msg[2] = "[battleface,chai,normal][c_black]I forgot to talk\nto her before we\nleft.[/page]";
				global.msg[3] = "[battleface,chai,normal][c_black]Knowing her,[freeze][delay,333][continue] she\nwas probably looking\nfor her helmet\nagain.";
				break;
		}
	}
}
