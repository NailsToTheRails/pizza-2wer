		var roomname = room_get_name(room)
		var i = 0
if (global.panic = 0) {
		 if (string_letters(roomname) == "test")
    {
		if (!audio_is_playing(mu_test))
                {
                    audio_stop_all()
                    scr_sound(mu_test)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_test
                }
	}
if string_letters(roomname) = "tutorial" 
{
	
   if !audio_is_playing(mu_tutorial)
   {
	       audio_stop_all()
   scr_sound(mu_tutorial)
   audio_sound_set_track_position(global.music, fadeoff)
   pausedmusic = mu_tutorial
   }
}
if string_letters(roomname) = "medieval" 
{
	
   if !audio_is_playing(mu_mediveal)
   {
	       audio_stop_all()
   scr_sound(mu_mediveal)
   audio_sound_set_track_position(global.music, fadeoff)
   pausedmusic = mu_mediveal
   }
}
}
