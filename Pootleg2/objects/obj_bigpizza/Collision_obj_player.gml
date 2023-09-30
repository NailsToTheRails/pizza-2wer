instance_destroy(self)
global.collect += 100
if (obj_player.character == "P" || obj_player.character == "N") {
scr_sssound(sfx_collectbigpizza)
	} else {
scr_sssound(sfx_sscollectbig)
	}
