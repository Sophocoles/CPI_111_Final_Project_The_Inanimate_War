/// @description Insert description here

if(instance_number(obj_player) > 1)
{
instance_destroy();	
}

// call parent's create method as well
event_inherited();
phy_bullet = true;
rm_kill_count = 0
rm_spider_kill_count = 0
has_key = false;
moveSpeed = 2;
hSpeed = 0;
vSpeed = 0;
len = 0;
dir = 0;
image_speed = 0;
state = scr_move_state;
face = RIGHT;
movement = MOVE;
weapon_sprite = spr_sword;

sprite[RIGHT, MOVE] = spr_player_right;
sprite[UP, MOVE] = spr_player_up;
sprite[LEFT, MOVE] = spr_player_left;
sprite[DOWN, MOVE] = spr_player_down;

sprite[RIGHT, ATTACK] = spr_player_attack_right;
sprite[UP, ATTACK] = spr_player_attack_up;
sprite[LEFT, ATTACK] = spr_player_attack_left;
sprite[DOWN, ATTACK] = spr_player_attack_down;
