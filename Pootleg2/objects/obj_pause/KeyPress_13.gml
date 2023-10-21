if (pause = true) {
if (sel = 0) {
	    instance_activate_all()
	room_goto(test)
obj_player.x = 274
obj_player.y = 483
} 
else if (sel = 1) {
    instance_activate_all()
		var roomname = room_get_name(room)
		var namestring =  string_letters(roomname)
		global.panic = false
                room = string(roomname) + "_1"
                pause = 0
				scr_playerreset();
				if (instance_exists(obj_exitgate)) {
                obj_player.x = obj_exitgate.x
				obj_player.y = obj_exitgate.y
				}
				else {
				trace("WHERE")	
				}
}
else if (sel = 2) {
	pause = 0
	instance_activate_all();
}
}