depth = 2;
randomize();
alarm[0] = random_range(35, 60);
image_speed = 0;
pawn_alarm = 0;
queen_alarm = 0;
idle_miss = 0;
idle_thing = 0;
hit_1_damage = 0;
display = obj_miss2;
distancebetween = 0;
freezeframe = false;
shake = 0;
pawn_start = random_range(360, 480);
queen_start = random_range(360, 480);
global.piece_hit_number = 1;
global.damage_output = 0;
attacked = 0;
attacked_2 = 0;
pawn_hspeed = random_range(7, 22);
pawn_frames_to_arrive = 320 / abs(pawn_hspeed);
queen_hspeed = random_range(-22, -7);
queen_frames_to_arrive = 320 / abs(queen_hspeed);
if (pawn_frames_to_arrive > queen_frames_to_arrive)
{
	pawn_alarm = 1;
	queen_alarm = pawn_frames_to_arrive - queen_frames_to_arrive;
}
if (queen_frames_to_arrive > pawn_frames_to_arrive)
{
	queen_alarm = 1;
	pawn_alarm = queen_frames_to_arrive - pawn_frames_to_arrive;
}
if (abs(queen_frames_to_arrive - pawn_frames_to_arrive) < 1)
{
	queen_alarm = 1;
	pawn_alarm = 1;
}
