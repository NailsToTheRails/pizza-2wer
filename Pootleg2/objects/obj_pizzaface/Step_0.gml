
x=median(x-maxspeed,obj_player.x,x+maxspeed)
y=median(y-maxspeed,obj_player.y,y+maxspeed)


maxspeed = clamp(maxspeed,0,4)


if place_meeting(x,y,obj_player)
{
room = timesuproom
obj_player.state = states.timesup

image_index = 0
audio_stop_all()
instance_destroy(self)
scr_soundeffect(mu_timesup)
}

maxspeed += 0.01