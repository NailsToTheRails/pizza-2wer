//why
if (global.panic = true) {
room_goto(targetRoom)	
obj_player.x = targetX
obj_player.y = targetY
global.laps +=1

if (global.laps <= 2) {
global.collect += 1000
global.fill += 972
} else {
global.collect += 2000
global.fill += 672
}

}