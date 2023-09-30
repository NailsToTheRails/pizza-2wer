if (global.cheesefollow == 0)
{
    ds_list_add(global.saveroom, id)
    if (global.toppintotal < 5)
        obj_hud.message = (("YOU NEED " + string((5 - global.toppintotal))) + " MORE TOPPINS!")
    if (global.toppintotal == 5)
        obj_hud.message = "YOU HAVE ALL TOPPINS!"
    obj_hud.showtext = 1
    obj_hud.alarm[0] = 150
    global.toppintotal += 1
    scr_sound(1)
    global.cheesefollow = 1
    panic = 0
}
