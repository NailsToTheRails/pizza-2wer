image_speed = 0.5
alarm[0] = 250
depth = -8
	if (obj_player.character == "P") {
						 if (global.rank == "p")
            sprite_index = spr_rankP
 if (global.rank == "s")
            sprite_index = spr_rankS
        if (global.rank == "a")
            sprite_index = spr_rankA
        if (global.rank == "b")
            sprite_index = spr_rankB
        if (global.rank == "c")
            sprite_index = spr_rankC
        if (global.rank == "d")
            sprite_index = spr_rankD
	} else if (obj_player.character == "N") {
				 if (global.rank == "p")
            sprite_index = spr_rankP
		 if (global.rank == "s")
            sprite_index = spr_rankNS
        if (global.rank == "a")
            sprite_index = spr_rankNA
        if (global.rank == "b")
            sprite_index = spr_rankNB
        if (global.rank == "c")
            sprite_index = spr_rankNC
        if (global.rank == "d")
            sprite_index = spr_rankND
	} else if (obj_player.character == "SP") {
						 if (global.rank == "p")
            sprite_index = spr_rankSPP
		 if (global.rank == "s")
            sprite_index = spr_rankSPS
        if (global.rank == "a")
            sprite_index = spr_rankSPA
        if (global.rank == "b")
            sprite_index = spr_rankSPB
        if (global.rank == "c")
            sprite_index = spr_rankSPC
        if (global.rank == "d")
            sprite_index = spr_rankSPD
	}