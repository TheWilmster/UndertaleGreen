_name = "* Chai";
sinefunc = 0;
global.save_photo = 21;
ff_x = 0;
ff_y = 0;
alarm[5] = random_range(5, 20);
global.previous_soldier = [1, 2, 3];
global.previous_soldier = array_shuffle(global.previous_soldier);
global.left_soldier = false;
global.right_soldier = false;
global.flag_win = false;
global.flag_die = false;
global.flag_flee = false;
snap_begin = false;
if (global.chai_firsttime == true)
	snap_time = 0;
else
	snap_time = 1;
enemy_spawn = 0;
global.battle_bg = 2;
hp = 40;
maxhp = 40;
spr_head_offset = 0;
hand_frame = 0;
snap_play = false;
opacity_change = 0;
opacity_change2 = 0;
snap = false;
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
lightning_boundaries = 175;
decree_text = 0;
siner = 0;
siner2 = 0;
offset = -100;
atk_choice = -1;
prev_choice = 0;
global.random_atk = false;
randomize();
atk_list = array_create(7, 1);
for (var i = 0; i < array_length(atk_list); i += 1)
	atk_list[i] = i + 3;
atk_list = array_shuffle(atk_list);
if (atk_list[0] == 9)
{
	array_delete(atk_list, 0, 1);
	array_push(atk_list, 9);
}
dead = false;
chai_talk = false;
spr_w = 94;
spr_h = 198;
alarm_set(0, 5);
battle_msg = 0;
