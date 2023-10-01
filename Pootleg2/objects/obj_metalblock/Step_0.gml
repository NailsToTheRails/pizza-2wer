
	if place_meeting(x,y,obj_player) && ( obj_player.state = states.bodyslam)
	{
	instance_destroy();
	}
	


if place_meeting(x + obj_player.hsp, y, obj_player) && (obj_player.state == states.mach)
{
    instance_destroy();
}


