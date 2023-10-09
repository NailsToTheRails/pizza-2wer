	scr_playerreset();
room_goto(test)
obj_player.state = states.normal
targetX =  279
targetY = 352
obj_player.x = targetX
obj_player.y = targetY
obj_player.visible = true
global.collect = 0
global.laps = 0
ds_list_clear(global.saveroom)
if (instance_exists(obj_pizzakinshroom) && global.shroomfollow == 1)
    instance_destroy(obj_pizzakinshroom)
if (instance_exists(obj_pizzakincheese) && global.cheesefollow == 1)
    instance_destroy(obj_pizzakincheese)
if (instance_exists(obj_pizzakintomato) && global.tomatofollow == 1)
    instance_destroy(obj_pizzakintomato)
if (instance_exists(obj_pizzakinsausage) && global.sausagefollow == 1)
    instance_destroy(obj_pizzakinsausage)
if (instance_exists(obj_pizzakinpineapple) && global.pineapplefollow == 1)
    instance_destroy(obj_pizzakinpineapple)
