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
