if (page_drawing == 0)
{
	DIALOG[0] = "[character,chai,sad][delay,1]* I thought I saw him in\n  his office right after\n  the funeral.[/page]";
	DIALOG[1] = "[character,chai,sad][delay,1]* Guess I just expected\n  him to be there.[pageactivate]";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
if (page_drawing == 1)
{
	DIALOG[0] = "[character,chai,sadatyou][delay,1]* I'll tell you something\n  else,[freeze][delay,333][continue] I sit in his\n  chair sometimes.[pageactivate]";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
if (page_drawing == 2)
{
	DIALOG[0] = "[character,chai,sad][delay,1]* I told myself I'd work\n  just as hard as he did.[/page]";
	DIALOG[1] = "[character,chai,sadatyou][delay,1]* And as much as I hate\n  it now...[/page]";
	DIALOG[2] = "[character,chai,sadatyou][delay,1]* I was the one who asked\n  Mom if I could help out\n  with the bakery.[/page]";
	DIALOG[3] = "[character,chai,miffed][delay,1]* Look how great that\n  turned out.[/page]";
	DIALOG[4] = "[character,chai,disappointed][delay,1]* ...[freeze][delay,333][continue]You want to know\n  where I was tonight?[/page]";
	DIALOG[5] = "[character,chai,disappointed][delay,1]* I was practicing my\n  guitar behind the\n  school.[pageactivate]";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
if (page_drawing == 3)
{
	DIALOG[0] = "[character,chai,miffed][delay,1]* And I know it's stupid.[freeze][delay,333][continue]\n* I popped in backstage\n  for a bit but...[/page]";
	DIALOG[1] = "[character,chai,remorseful][delay,1]* But I guess I'm just\n  jealous.[freeze][delay,333][continue] You're like his\n  mirror image.[pageactivate]";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
if (page_drawing == 4)
{
	DIALOG[0] = "[character,chai,sadatyou][delay,1]* ...[freeze][delay,333][continue]Sometimes it's like\n  I can't tell the\n  difference.[/page]";
	DIALOG[1] = "[character,chai,sadatyou][delay,1]* What's your secret?[/page]";
	DIALOG[2] = "[character,chai,sadatyou][delay,1]* I've tried so hard to\n  be like him and you just\n  do it.[pageactivate]";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
if (page_drawing == 5)
{
	DIALOG[0] = "[character,none,-1][delay,1]* (You never noticed all that\n  work stuff.)[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* (You tell her that dad didn't\n  worry about how people looked\n  at him.)[/page]";
	DIALOG[2] = "[character,none,-1][delay,1]* (You thought it was funny how\n  he'd talk to birds in the\n  park.)[pageactivate]";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
if (page_drawing == 6)
{
	DIALOG[0] = "[character,none,-1][delay,1]* (He was always himself.[delay,333] That's\n  why the bakery was better with\n  him there.)[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* (That's why he'd want Chai\n  to keep practicing her guitar.)[pageactivate]";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
if (page_drawing == 7)
{
	DIALOG[0] = "[character,chai,crysmile][owsprite,chai,smile][delay,1]* ...See?[/page]";
	DIALOG[1] = "[character,chai,crysmile][delay,1]* You sound just like him.[/page]";
	DIALOG[2] = "[character,chai,blinksmile][delay,1]* ...[/page]";
	DIALOG[3] = "[character,chai,smile][delay,1]* Let's get you home,\n  yeah?[freeze][delay,333][continue] It's way past your\n  bedtime.[playguitar]";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
