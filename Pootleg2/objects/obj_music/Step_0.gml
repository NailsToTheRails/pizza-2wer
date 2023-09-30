if (obj_player.character == "P" || obj_player.character == "N") {
    if (global.panic == 1) {
        if (global.laps >= 3 && !audio_is_playing(mu_LocoTime)) {
            audio_stop_all();
            scr_sound(mu_LocoTime);
            pausedmusic = mu_LocoTime;
        } else if (global.laps == 1 && !audio_is_playing(mu_lap2)) {
            audio_stop_all();
            scr_sound(mu_lap2);
            pausedmusic = mu_lap2;
        } else if (global.laps <= 0 && !audio_is_playing(mu_pizzatime)) {
            audio_stop_all();
            scr_sound(mu_pizzatime);
            pausedmusic = mu_pizzatime;
        }
    }
} else {
    if (global.panic == 1) {
        if (global.laps >= 3 && !audio_is_playing(mu_lap3piz)) {
            audio_stop_all();
            scr_sound(mu_lap3piz);
            pausedmusic = mu_lap3piz;
        } else if (global.laps == 1 && !audio_is_playing(mu_pizzellelap2)) {
            audio_stop_all();
            scr_sound(mu_pizzellelap2);
            pausedmusic = mu_pizzellelap2;
        } else if (global.laps <= 0 && !audio_is_playing(mu_glucose)) {
            audio_stop_all();
            scr_sound(mu_glucose);
            pausedmusic = mu_glucose;
        }
    }
}
