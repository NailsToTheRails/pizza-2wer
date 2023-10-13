if ((ds_list_find_index(global.saveroom, id) == -1))
{
    instance_destroy()
	scr_sssound(sfx_pillarimpact)
	    obj_hud.alarm[1] = 60
	instance_create(x, y,obj_itspizzatime)
    with (instance_create(x, y, obj_sausageman_dead))
        sprite_index = spr_hungrypillar_dead
    global.panic = 1
    switch room
    {
        case tutorial_2:
            global.minutes = 2
            global.seconds = 15
            break
			        case tutorial_1:
            global.minutes = 2
            global.seconds = 15
            break
						        case test:
            global.minutes = 0
            global.seconds = 15;
            break
    }
 
    ds_list_add(global.saveroom, id)
}

