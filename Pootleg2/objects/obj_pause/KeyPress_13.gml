if (pause = true) {
if (sel = 0) {
	    instance_activate_all()
	room_goto(test)
obj_player.x = 274
obj_player.y = 483
pause = 0
	instance_activate_all();
	scr_playerreset();
}  else if (sel = 1) {
    instance_activate_all()
		global.panic = false
		trace(room)
		switch (room) {
		case entrance_1:
		room_goto(real(entrance_1))
                pause = 0
				scr_playerreset();
				if (instance_exists(obj_exitgate)) {
				room_goto(entrance_1)
                obj_player.x = obj_exitgate.x
				obj_player.y = obj_exitgate.y
								trace("Work")	
				}
				else {
				trace("WHERE")	
				}
				break
						case medieval_1:
		room_goto(medieval_1)
                pause = 0
				scr_playerreset();
				if (instance_exists(obj_exitgate)) {
				room_goto(medieval_1)
                obj_player.x = obj_exitgate.x
				obj_player.y = obj_exitgate.y
								trace("Work")	
				}
				else {
				trace("WHERE")	
				}
				break
										case ancient_1:
		room_goto(ancient_1)
                pause = 0
				scr_playerreset();
				if (instance_exists(obj_exitgate)) {
				room_goto(ancient_1)
                obj_player.x = obj_exitgate.x
				obj_player.y = obj_exitgate.y
								trace("Work")	
				}
				else {
				trace("WHERE")	
				}
				break
					case war_1:
		room_goto(war_1)
                pause = 0
				scr_playerreset();
				if (instance_exists(obj_exitgate)) {
							room_goto(war_1)
                obj_player.x = obj_exitgate.x
				obj_player.y = obj_exitgate.y
								trace("Work")	
				}
				else {
				trace("WHERE")	
				}
				break
	}
}
else if (sel = 2) {
	pause = 0
	instance_activate_all();
}
}