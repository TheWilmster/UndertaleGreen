randomize();
soldier_type = global.previous_soldier[obj_enemy_chai.enemy_spawn];
smoke_img = 0;
if (soldier_type == 1)
{
	_name = "* Mage";
	siner2 = 0;
	spr_head_offset = 0;
}
if (soldier_type == 2)
{
	_name = "* Wizard";
	siner2 = 0;
	spr_head_offset = 0;
}
if (soldier_type == 3)
{
	_name = "* Jester";
	siner2 = 0;
	spr_head_offset = 0;
}
bullet_spawn = false;
sinefunc = 0;
if (x > 320)
	global.right_soldier = true;
if (x < 320)
	global.left_soldier = true;
hp = 4;
maxhp = 4;
deathanim = false;
spr_head_offset = 0;
depth = -1000;
opacity_change = 0;
opacity_change2 = 0;
side_choice = 0;
atk = 5;
def = 2;
m_head_img = 0;
m_body_img = 0;
w_head_img = 0;
w_body_img = 0;
j_head_img = 0;
j_body_img = 0;
j_x_offset = 0;
liftarms = false;
liftarm_lng = false;
kicking = false;
shake = false;
battle_image = spr_enemy_chai_head;
normal_img = -1;
hurt_img = spr_enemy_chai_head;
img_bounce = 0;
down = 1;
up = 0;
inc = 0.05;
spr_body_vscale = 2;
spr_body_hscale = 2;
dead = false;
spr_w = 60;
spr_h = 120;
battle_msg = 0;
