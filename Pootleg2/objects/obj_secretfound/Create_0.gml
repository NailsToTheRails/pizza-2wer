if  ds_list_find_index(global.saveroom, id) = -1
{
global.secretfound += 1




with obj_hud
{
message = ("[wave]YOU HAVE FOUND " + string(global.secretfound) + " SECRET OUT OF 6")
showtext = true
alarm[0] = 150
	
}

ds_list_add(global.saveroom, id) 
}