_name = "* Soldier";
sinefunc = 0;
if (x > 320)
	global.right_soldier = true;
if (x < 320)
	global.left_soldier = true;
hp = 6;
maxhp = 6;
spr_head_offset = 0;
opacity_change = 0;
opacity_change2 = 0;
side_choice = 0;
atk = 5;
def = 2;
battle_image = spr_enemy_chai_head;
normal_img = -1;
hurt_img = spr_enemy_chai_head;
img_bounce = 0;
down = 1;
up = 0;
inc = 0.05;
spr_body_vscale = 2;
dead = false;
spr_w = 60;
spr_h = 120;
battle_msg = 0;
