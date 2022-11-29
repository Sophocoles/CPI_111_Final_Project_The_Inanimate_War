/// @description Set alarm[0]

event_inherited();
alarm[0] = room_speed * irandom_range(2,5);
movement = IDLE;
face = RIGHT;

sprite[RIGHT, MOVE] = spr_bossholder;
sprite[UP, MOVE] = spr_bossholder;
sprite[LEFT, MOVE] = spr_bossholder;
sprite[DOWN, MOVE] = spr_bossholder;

sprite[RIGHT, ATTACK] = spr_bossholder;
sprite[UP, ATTACK] = spr_bossholder;
sprite[LEFT, ATTACK] = spr_bossholder;
sprite[DOWN, ATTACK] = spr_bossholder;

sprite[RIGHT, IDLE] = spr_bossholder;
sprite[UP, IDLE] = spr_bossholder;
sprite[LEFT, IDLE] = spr_bossholder;
sprite[DOWN, IDLE] = spr_bossholder;

// minion spawner
instance_create_layer(x,y,"Instances",obj_minion_spawner)

