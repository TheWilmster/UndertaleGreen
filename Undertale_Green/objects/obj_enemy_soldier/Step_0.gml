if (smoke_img < 4)
	smoke_img += 0.25;
if (dead == true)
{
	smoke_img = 0;
	deathanim = true;
	dead = false;
	audio_play_sound(snd_largeswing, 1, false);
}
if (deathanim == true && smoke_img > 3)
	instance_destroy();
if (obj_battle_system.turn == BattleTurn.NONE)
	bullet_spawn = false;
if (soldier_type == 1)
{
	siner2 -= 0.07;
	spr_head_offset = -sin(siner2) * 2;
	if (liftarms == true && m_body_img < 10)
	{
		if (m_body_img <= 5)
			m_body_img += 0.5;
		if (instance_exists(obj_magic_orb))
		{
			if (obj_magic_orb.follow_player == true)
			{
				m_body_img += 0.5;
				if (m_body_img >= 10)
				{
					liftarms = false;
					m_body_img = 0;
				}
			}
		}
	}
	if (global.previous_soldier[obj_enemy_chai.enemy_spawn] == 1)
		obj_enemy_chai.enemy_spawn += 1;
}
if (soldier_type == 2)
{
	if (obj_battle_system.turn != BattleTurn.ENEMY)
	{
		liftarm_lng = false;
		w_body_img = 0;
	}
	siner2 -= 0.1;
	spr_head_offset = -sin(siner2) * 1.5;
	spr_body_hscale = (sin(siner2) / 10) + 2;
	if (liftarm_lng == true && w_body_img < 10)
	{
		if (w_body_img <= 4)
			w_body_img += 0.5;
		if (instance_exists(obj_lightning_anim))
		{
			if (obj_lightning_anim.fadeout == true)
			{
				w_body_img += 0.5;
				if (w_body_img >= 8)
				{
					liftarm_lng = false;
					w_body_img = 0;
				}
			}
		}
	}
	if (global.previous_soldier[obj_enemy_chai.enemy_spawn] == 2)
		obj_enemy_chai.enemy_spawn += 1;
}
if (soldier_type == 3)
{
	if (obj_battle_system.turn != BattleTurn.ENEMY)
		j_body_img = 0;
	if (kicking == false)
	{
		siner2 -= 0.2;
		spr_head_offset = -sin(siner2) * 1.9;
		spr_body_vscale = (sin(siner2) / 10) + 2;
	}
	else
	{
		spr_head_offset = 0;
		spr_body_vscale = 2;
		if (shake == true)
		{
			siner2 -= 2;
			j_x_offset = sin(siner2) * 1.5;
		}
		else
		{
			siner2 = 0;
			j_x_offset = 0;
		}
	}
	if (global.previous_soldier[obj_enemy_chai.enemy_spawn] == 3)
		obj_enemy_chai.enemy_spawn += 1;
}
if (obj_enemy_chai.enemy_spawn >= 3)
	obj_enemy_chai.enemy_spawn = 0;
