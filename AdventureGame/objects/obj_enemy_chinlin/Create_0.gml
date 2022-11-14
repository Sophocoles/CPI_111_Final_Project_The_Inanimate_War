/// @description Set alarm[0]

event_inherited();
alarm[0] = room_speed * irandom_range(2,5);
movement = IDLE;
face = RIGHT;

sprite[RIGHT, MOVE] = spr_chinlin_run_right;
sprite[UP, MOVE] = spr_chinlin_run_up;
sprite[LEFT, MOVE] = spr_chinlin_run_right;
sprite[DOWN, MOVE] = spr_chinlin_run_down;

sprite[RIGHT, ATTACK] = spr_chinlin_run_right;
sprite[UP, ATTACK] = spr_chinlin_run_up;
sprite[LEFT, ATTACK] = spr_chinlin_run_right;
sprite[DOWN, ATTACK] = spr_chinlin_run_down;

sprite[RIGHT, IDLE] = spr_chinlin_stand_right;
sprite[UP, IDLE] = spr_chinlin_stand_up;
sprite[LEFT, IDLE] = spr_chinlin_stand_right;
sprite[DOWN, IDLE] = spr_chinlin_stand_down;


