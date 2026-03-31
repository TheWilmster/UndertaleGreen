helpme = 1;
hspeed = obj_fight.queen_hspeed;
vspeed = -15;
accel = (0.09 * abs(hspeed)) - ((obj_fight.queen_start - 320) * 0.00019 * abs(hspeed) * (abs(hspeed) / 10));
rotspeed = (360 - rotation) / obj_fight.queen_frames_to_arrive;
