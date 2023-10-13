//why
if (keyboard_check(vk_up)) {
if (global.panic = true) {
room_goto(rankroom)	
obj_player.x = room_width / 2
obj_player.y = room_height / 2
obj_player.state = states.rank
global.panic = false
//restart
//fixed this shit

ini_open("saveData.ini");

var roomname = room_get_name(room)
var namestring =  string_letters(roomname)


ini_open("saveData.ini");

if ini_read_real("Highscore", namestring, 0) < global.collect
ini_write_real("Highscore",namestring,global.collect);

if ini_read_real("Secret", namestring, 0) < global.secretfound
ini_write_string("Secret",namestring,global.secretfound);

if ini_read_real("Toppin", namestring +"1", false) = 0
ini_write_real("Toppin",namestring + "1" ,global.shroomfollow);
if ini_read_real("Toppin", namestring +"2", false) = 0
ini_write_real("Toppin",namestring + "2",global.cheesefollow );
if ini_read_real("Toppin", namestring +"3", false) = 0
ini_write_real("Toppin",namestring + "3",global.tomatofollow);
if ini_read_real("Toppin", namestring +"4", false) = 0
ini_write_real("Toppin",namestring + "4",global.sausagefollow);
if ini_read_real("Toppin", namestring +"5", false) = 0
ini_write_real("Toppin",namestring + "5",global.pineapplefollow);
if global.rank = "p"
ini_write_string("Ranks",namestring,global.rank)
if global.rank = "s" &&  "p"  !=  ini_read_string("Ranks",namestring,"none") 
if global.rank = "s"
ini_write_string("Ranks",namestring,global.rank)
if global.rank = "a" &&  "s"  !=  ini_read_string("Ranks",namestring,"none") 
ini_write_string("Ranks",namestring,global.rank)
if global.rank = "b" && "s"  !=  ini_read_string("Ranks",namestring,"none") && "a"  !=  ini_read_string("Ranks",namestring,"none")
ini_write_string("Ranks",namestring,global.rank)
if global.rank = "c" && "s"  !=  ini_read_string("Ranks",namestring,"none") && "a"  !=  ini_read_string("Ranks",namestring,"none") && "b"  !=  ini_read_string("Ranks",namestring,"none") 
ini_write_string("Ranks",namestring,global.rank)
if global.rank = "d" && "s"  !=  ini_read_string("Ranks",namestring,"none") && "a"  !=  ini_read_string("Ranks",namestring,"none") && "b"  !=  ini_read_string("Ranks",namestring,"none") && "c"  !=  ini_read_string("Ranks",namestring,"none") 
ini_write_string("Ranks",namestring,global.rank)
ini_close(); 


}
}