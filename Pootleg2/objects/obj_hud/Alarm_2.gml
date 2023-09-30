if  global.panic = true && !instance_exists(obj_pizzaface)
{

instance_create(room_width/2, -50, obj_pizzaface)
scr_soundeffect(sfx_pizzaface)
alarm[2] = -1
message = "YOUR FUCKED BRO"
showtext = true
alarm[0] = 150
}
