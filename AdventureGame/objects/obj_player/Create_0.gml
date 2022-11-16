///Change sprite size
  image_xscale = 0.2;
  image_yscale = image_xscale;

if(instance_number(obj_player) > 1)
{
instance_destroy();	
}

// call parent's create method as well
event_inherited();
phy_bullet = true;
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

sprite[RIGHT, MOVE] = spr_fisk_right;
sprite[UP, MOVE] = spr_fisk_up;
sprite[LEFT, MOVE] = spr_fisk_left;
sprite[DOWN, MOVE] = spr_fisk_down;

sprite[RIGHT, ATTACK] = spr_fisk_attack_right;
sprite[UP, ATTACK] = spr_fisk_attack_up;
sprite[LEFT, ATTACK] = spr_fisk_attack_left;
sprite[DOWN, ATTACK] = spr_fisk_attack_down;
