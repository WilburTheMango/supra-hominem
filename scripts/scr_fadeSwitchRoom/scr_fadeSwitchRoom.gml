/// @description Fade, switch room, and reposition player
/// @param {real} targetX
/// @param {real} targetY
/// @param {room} targetRoom

function fadeSwitchRoom(_room, _duration, _color, _x, _y) {

	var _fader = instance_create_depth(0, 0, 0, obj_fader);
	
	with (_fader) {
	target_rm = _room;
	duration = _duration;
	color = _color;
	target_x = _x;
	target_y = _y;
	}

}