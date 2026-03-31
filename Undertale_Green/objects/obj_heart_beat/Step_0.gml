if (pumpdown == true)
{
	if (x_sc <= 1.75)
	{
		x_sc += 0.15;
		y_sc += 0.15;
	}
	else
	{
		pumpdown = false;
		alarm[1] = 4;
		bigheart = true;
		obj_heart.shake = 3;
	}
}
if (pumpdown_back == true)
{
	if (x_sc >= 1)
	{
		x_sc -= 0.15;
		y_sc -= 0.15;
	}
	else
	{
		x_sc = 1;
		y_sc = 1;
		pumpdown_back = false;
		pumpcomplete = true;
		obj_heart.visible = true;
		alarm[2] = 40;
	}
}
if (bigheart == true)
{
	bh_alpha -= 0.035;
	bh_xsc += 0.3;
	bh_ysc += 0.3;
}
