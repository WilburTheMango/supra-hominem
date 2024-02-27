/// @description fade effect
// enter state
if (state == 0) {
	timer++;
	
	// change room and move player
	if (timer >= duration) {
		room_goto(target_rm);
		obj_player.x = target_x;
		obj_player.y = target_y;
		// change the state to do the unfade
		state = 1;
	}
}
// exit state
else if (state == 1) {
	timer--;
	if (timer == 59) {
		instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "Instances", obj_loadSpinner);
	}
	// destroy self at timer end when state is 1 (timer is decremented while state is 1)
	if (timer <= 0) {
		instance_destroy();
		instance_destroy(obj_loadSpinner); // TODO: fix loadspinner to be drawn on the GUI part
	}
}

// set alpha according to timer and set duration
alpha = timer / duration;