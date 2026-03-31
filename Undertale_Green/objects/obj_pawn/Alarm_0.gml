helpme = 1;
hspeed = obj_fight.pawn_hspeed;
vspeed = -15;
accel = (0.09 * hspeed) - ((obj_fight.pawn_start - 320) * 0.00019 * hspeed * (hspeed / 10));
rotspeed = (360 - rotation) / obj_fight.pawn_frames_to_arrive;
