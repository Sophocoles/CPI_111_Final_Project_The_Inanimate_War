/// control objectives
if (!instance_exists(obj_player))
{
	exit;
}

	//Track kills
		//Enemies
			if (instance_exists(obj_player) && obj_player.rm_kill_count > enemies_killed)
				{
					enemies_killed = obj_player.rm_kill_count
			
					if(enemies_killed == enemy_kill_goal)
					{
						enemy_requirement_met = true
					}	
				}
		//Spiders
			if (instance_exists(obj_player) && obj_player.rm_spider_kill_count > spiders_killed)
				{
					spiders_killed = obj_player.rm_spider_kill_count
			
					if(spiders_killed == spider_kill_goal)
					{
						spider_requirement_met = true
					}	
				}
		
	//Level 1
		if (room == rm_one )
		{
			//Room 1 objectives: Kill 10 enemies and get the key
		
			//If kills not sufficient, display remaining
			if(enemy_requirement_met == false)
				{
					obj1 = "Kill " + string(enemy_kill_goal - enemies_killed) + " enemies"
				}
			else
				{
					obj1 = ""
				}
			
			//If no key, add that objective
			if(obj_player.has_key == false)
				{
					obj2 = find_objective
				}
			else
				{
					obj2 = ""
				}
					
			//Mash objectives
			objective = obj1 + "\n" + obj2
		
			//If both objectives complete, leave
			if(obj_player.has_key == true && enemy_requirement_met == true)
				{
					instance_destroy(obj_barrier_objectives);
					objective = "Find the door and leave"
				}
		
		}	

	//Level 2
		if (room == rm_two )

		{
			//Kill 3 spiders
			//If kills not sufficient, display remaining
			if(spider_requirement_met == false)
				{
					obj1 = "Kill " + string(spider_kill_goal - spiders_killed) + " spiders"
				}
			else
				{
					obj1 = ""
				}
					
			//Mash objectives
			objective = obj1 + "\n" + obj2
		
			//If both objectives complete, leave
			if(spider_requirement_met == true)
				{
					instance_destroy(obj_barrier_objectives);
					objective = "Find the door and leave"
				}
		
		}
	//Room 3
	if (room == rm_three )

	{
	//Room 3 get the key
					
			//If no key, add that objective
			if(obj_player.has_key == false)
				{
					obj2 = find_objective
				}
			else
				{
					obj2 = ""
				}
					
			//Mash objectives
			objective = obj2
		
			//If both objectives complete, leave
			if(obj_player.has_key == true)
				{
					instance_destroy(obj_barrier_objectives);
					objective = "Find the door and leave"
				}
	}
		
		//Pause menu
	if (room == rm_pause )

	{
		//Kill enemies and defeat spider boss and get key
	}











