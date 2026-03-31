function collision_handler()
{
	var interact_d = collision_line(x + (sprite_width / 2), y + 18, x + (sprite_width / 2), y + (sprite_height + 4), par_NPC, false, false);
	var interact_r = collision_line(x + (sprite_width / 2), y + 18, x + (sprite_width + 4), y + 18, par_NPC, false, false);
	var interact_u = collision_line(x + (sprite_width / 2), y + 18, x + (sprite_width / 2), y + 10, par_NPC, false, false);
	var interact_l = collision_line(x + (sprite_width / 2), y + 18, x - 4, y + 18, par_NPC, false, false);
	if (place_meeting(x + 1, y, obj_SlopeDownRight) || place_meeting(x, y + 1, obj_SlopeDownRight))
	{
		x = xprevious;
		y = yprevious;
		if (hsp > 0 && vsp > 0)
		{
			hsp = 0;
			vsp = 0;
		}
		else if (hsp > 0)
		{
			vsp = -vwalkspeed - 1;
		}
		else if (vsp > 0)
		{
			hsp = -hwalkspeed - 1;
		}
	}
	if (place_meeting(x - 1, y, obj_SlopeDownLeft) || place_meeting(x, y + 1, obj_SlopeDownLeft))
	{
		x = xprevious;
		y = yprevious;
		if (hsp < 0 && vsp > 0)
		{
			hsp = 0;
			vsp = 0;
		}
		else if (hsp < 0)
		{
			vsp = -vwalkspeed - 1;
		}
		else if (vsp > 0)
		{
			hsp = hwalkspeed + 1;
		}
	}
	if (place_meeting(x + 1, y, obj_SlopeUpRight) || place_meeting(x, y - 1, obj_SlopeUpRight))
	{
		x = xprevious;
		y = yprevious;
		if (hsp > 0 && vsp < 0)
		{
			hsp = 0;
			vsp = 0;
		}
		else if (hsp > 0)
		{
			vsp = vwalkspeed + 1;
		}
		else if (vsp < 0)
		{
			hsp = -hwalkspeed - 1;
		}
	}
	if (place_meeting(x + 1, y, obj_SlopeUpLeft) || place_meeting(x, y - 1, obj_SlopeUpLeft))
	{
		x = xprevious;
		y = yprevious;
		if (hsp < 0 && vsp < 0)
		{
			hsp = 0;
			vsp = 0;
		}
		else if (hsp < 0)
		{
			vsp = vwalkspeed + 1;
		}
		else if (vsp < 0)
		{
			hsp = hwalkspeed + 1;
		}
	}
	if (!place_free(x + hsp, y))
	{
		while (place_free(x + sign(hsp), y))
			x += sign(hsp);
		hsp = 0;
	}
	if (!place_free(x, y + vsp))
	{
		while (place_free(x, y + sign(vsp)))
			y += sign(vsp);
		vsp = 0;
	}
	if (!place_free(x + hsp, y + vsp))
	{
		while (place_free(x + sign(hsp), y + sign(vsp)))
		{
			x += sign(hsp);
			y += sign(vsp);
		}
		hsp = 0;
		vsp = 0;
	}
	if (interact_d && interact && facing == 0)
	{
		global.choice_object = interact_d;
		curr_state = PlayerState.INTERACT;
		with (interact_d)
			event_user(0);
	}
	if (interact_r && interact && facing == 1)
	{
		global.choice_object = interact_r;
		curr_state = PlayerState.INTERACT;
		with (interact_r)
			event_user(0);
	}
	if (interact_u && interact && facing == 2)
	{
		global.choice_object = interact_u;
		curr_state = PlayerState.INTERACT;
		with (interact_u)
			event_user(0);
	}
	if (interact_l && interact && facing == 3)
	{
		global.choice_object = interact_l;
		curr_state = PlayerState.INTERACT;
		with (interact_l)
			event_user(0);
	}
}
