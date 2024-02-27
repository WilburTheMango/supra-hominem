/// @description check if meeting and warp

if place_meeting(x,y,obj_player) {
	room_goto(target_rm);
	obj_player.x = target_x; 
	obj_player.y = target_y;
}