/// @description Set alarm[0]

event_inherited();
alarm[0] = room_speed * irandom_range(2,5);
movement = IDLE;
face = RIGHT;

sprite[RIGHT, MOVE] = spr_spider_run_right;
sprite[UP, MOVE] = spr_spider_run_up;
sprite[LEFT, MOVE] = spr_spider_run_right
sprite[DOWN, MOVE] = spr_spider_run_down;

sprite[RIGHT, ATTACK] = spr_spider_attack_right;
sprite[UP, ATTACK] = spr_spider_attack_up;
sprite[LEFT, ATTACK] = spr_spider_attack_right;
sprite[DOWN, ATTACK] = spr_spider_attack_down;

sprite[RIGHT, IDLE] = spr_spider_stand_right;
sprite[UP, IDLE] = spr_spider_stand_up;
sprite[LEFT, IDLE] = spr_spider_stand_right;
sprite[DOWN, IDLE] = spr_spider_stand_down;

// minion spawner
instance_create_layer(x,y,"Instances",obj_minion_spawner)

