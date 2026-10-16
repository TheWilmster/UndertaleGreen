if (global.school_time_sequence == 0)
{
	DIALOG[0] = "[character,none,-1][delay,1]* It's some pictures of Chai and\n  her friends.[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* ...[delay,333]And some other people.";
}
if (global.school_time_sequence == 1)
{
	DIALOG[0] = "[character,none,-1][delay,1]* It's some pictures of Chai and\n  her friends.[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* ...[delay,333]And Eden.[/page]";
	DIALOG[2] = "[character,none,-1][delay,1]* ...[delay,333]And some other people.";
}
if (global.school_time_sequence == 2)
{
	DIALOG[0] = "[character,none,-1][delay,1]* It's some pictures of Chai and\n  her friends.[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* ...[delay,333]And Eden.[/page]";
	DIALOG[2] = "[character,none,-1][delay,1]* ...[delay,333]And Gray.[/page]";
	DIALOG[3] = "[character,none,-1][delay,1]* ...[delay,333]And some other people.";
}
if (global.school_time_sequence == 3)
{
	DIALOG[0] = "[character,none,-1][delay,1]* It's some pictures of Chai and\n  her friends.[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* ...[delay,333]And Eden.[/page]";
	DIALOG[2] = "[character,none,-1][delay,1]* ...[delay,333]And Gray.[/page]";
	DIALOG[3] = "[character,none,-1][delay,1]* ...[delay,333]And some other people.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
