if place_meeting(x,y,obj_player) && drawing = false
{
ini_open("saveData.ini");
drawing = true
}

if !place_meeting(x,y,obj_player) && drawing = true
{
ini_close(); 
drawing = false
}

if place_meeting(x,y, obj_player) {
rank_scale = Approach(rank_scale, 1, 0.1);
image_speed = 0.35
}
else
{
image_speed=  0
rank_scale = Approach(rank_scale, 0, 0.1);
image_index = 0
}

if (distance_to_object(obj_player) < 40) {
	showtext = true;
	switch (levelname) {
		default:
		    with (obj_hud)
			{
		        message = string_upper(other.levelname);
				showtext = 1;
				alarm[0] = 2;
			}	
		break;
		case "tutorial":
		    with (obj_hud)
			{
		        message = "TUTORIAL";
				showtext = 1;
				alarm[0] = 2;
			}			
		break;
				case "medieval":
		    with (obj_hud)
			{
		        message = "MEDRIVAL";
				showtext = 1;
				alarm[0] = 2;
			}			
		break;
						case "ancient":
		    with (obj_hud)
			{
		        message = "ANCHIENT CHEZ";
				showtext = 1;
				alarm[0] = 2;
			}			
		break;
								case "depths":
		    with (obj_hud)
			{
		        message = "BLUUD SHAUCH DUNGEEUN";
				showtext = 1;
				alarm[0] = 2;
			}			
		break;
										case "lv4":
		    with (obj_hud)
			{
		        message = "FUST FUUG SHAULGOON";
				showtext = 1;
				alarm[0] = 2;
			}			
		break;
		case "lv5":
		    with (obj_hud)
			{
		        message = "DESORT";
				showtext = 1;
				alarm[0] = 2;
			}			
		break;
		case "lv6":
		    with (obj_hud)
			{
		        message = "FUHM MARN";
				showtext = 1;
				alarm[0] = 2;
			}			
		break;
		case "lv7":
		    with (obj_hud)
			{
		        message = "WILD BITCH THE BEACH";
				showtext = 1;
				alarm[0] = 2;
			}			
		break;
	
}

}
