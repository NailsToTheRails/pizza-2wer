if (place_meeting(x, y, obj_player) && (sprite_index == spr_pizzaboxunopen))
{
	if (obj_player.character == "P" || obj_player.character == "N") {
	if !audio_is_playing(sfx_toppinget)
scr_sssound(sfx_toppinget)
	} else {
			if !audio_is_playing(sfx_sstoppinget)
scr_sssound(sfx_sstoppinget)
	}
    if (content == obj_pizzakinshroom)
    {
        if place_meeting(x, y, obj_player)
            global.collect += 1000
        instance_create(x, y, obj_taunteffect)
        with (instance_create(x, (y - 25), content))
            sprite_index = spr_toppinshroom_intro
        if (global.toppintotal < 5)
            obj_hud.message = (("YOU NEED " + string((5 - global.toppintotal))) + " MORE TOPPINS!")
        if (global.toppintotal == 5)
            obj_hud.message = "YOU HAVE ALL TOPPINS!"
        obj_hud.showtext = 1
        obj_hud.alarm[0] = 150
        global.toppintotal += 1
        global.shroomfollow = 1
    }
    if (content == obj_pizzakincheese)
    {
        if place_meeting(x, y, obj_player)
            global.collect += 1000
        with (instance_create(x, (y - 25), content))
            sprite_index =             sprite_index = spr_toppincheese_intro
        instance_create(x, y, obj_taunteffect)
        if (global.toppintotal < 5)
            obj_hud.message = (("YOU NEED " + string((5 - global.toppintotal))) + " MORE TOPPINS!")
        if (global.toppintotal == 5)
            obj_hud.message = "YOU HAVE ALL TOPPINS!"
        obj_hud.showtext = 1
        obj_hud.alarm[0] = 150
        global.toppintotal += 1
        global.cheesefollow = 1
    }
    if (content == obj_pizzakintomato)
    {
        if place_meeting(x, y, obj_player)
            global.collect += 1000
        else
            global.collectN += 1000
        with (instance_create(x, (y - 25), content))
            sprite_index = spr_toppintomato_intro
        instance_create(x, y, obj_taunteffect)
        if (global.toppintotal < 5)
            obj_hud.message = (("YOU NEED " + string((5 - global.toppintotal))) + " MORE TOPPINS!")
        if (global.toppintotal == 5)
            obj_hud.message = "YOU HAVE ALL TOPPINS!"
        obj_hud.showtext = 1
        obj_hud.alarm[0] = 150
        global.toppintotal += 1
        global.tomatofollow = 1
    }
    if (content == obj_pizzakinsausage)
    {
        if place_meeting(x, y, obj_player)
            global.collect += 1000
        else
            global.collectN += 1000
        with (instance_create(x, (y - 25), content))
            sprite_index = spr_toppinsausage_intro
        instance_create(x, y, obj_taunteffect)
        if (global.toppintotal < 5)
            obj_hud.message = (("YOU NEED " + string((5 - global.toppintotal))) + " MORE TOPPINS!")
        if (global.toppintotal == 5)
            obj_hud.message = "YOU HAVE ALL TOPPINS!"
        obj_hud.showtext = 1
        obj_hud.alarm[0] = 150
        global.toppintotal += 1
        global.sausagefollow = 1
    }
    if (content == obj_pizzakinpineapple)
    {
        if place_meeting(x, y, obj_player)
            global.collect += 1000
        with (instance_create(x, (y - 25), content))
          sprite_index = spr_toppinpineapple_intro
        instance_create(x, y, obj_taunteffect)
        ds_list_add(global.saveroom, id)
        if (global.toppintotal < 5)
            obj_hud.message = (("YOU NEED " + string((5 - global.toppintotal))) + " MORE TOPPINS!")
        if (global.toppintotal == 5)
            obj_hud.message = "YOU HAVE ALL TOPPINS!"
        obj_hud.showtext = 1
        obj_hud.alarm[0] = 150
        global.toppintotal += 1
        global.pineapplefollow = 1
    }
    sprite_index = spr_pizzaboxopen
}
if ((sprite_index == spr_pizzaboxopen) && (floor(image_index) == 16))
    instance_destroy()

