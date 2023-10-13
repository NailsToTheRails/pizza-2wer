if ((ds_list_find_index(global.saveroom, id) == -1))
{
    instance_destroy();
    scr_sssound(sfx_pillarimpact);
    instance_create(x, y, obj_itspizzatime);
    with (instance_create(x, y, obj_sausageman_dead))
    {
        sprite_index = spr_hungrypillar_dead;
    }
    
    switch (room)
    {
        case tutorial_2:
global.fill = 2555
            break;
        case tutorial_1:
global.fill = 2555
            break;
        case test:
global.fill = 2555
            break;
    }
    
    obj_hud.alarm[1] = 60;
    ds_list_add(global.saveroom, id);
    global.panic = true;
}
