randomize();
choosepattern = choose(0, 1);
dragon_order = choose(0, 1);
if (dragon_order == 0)
{
	alarm[0] = 87;
	alarm[1] = 172;
	alarm[2] = 272;
}
if (dragon_order == 1)
{
	alarm[1] = 87;
	alarm[0] = 172;
	alarm[2] = 272;
}
