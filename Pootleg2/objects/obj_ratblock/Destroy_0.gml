
if  ds_list_find_index(global.saveroom, id) = -1
{
tile_layer_delete_at(1, x, y);
tile_layer_delete_at(1, x+32, y);
tile_layer_delete_at(1, x+32, y+32);
tile_layer_delete_at(1, x, y+32);
ds_list_add(global.saveroom, id) 
}

depth =1