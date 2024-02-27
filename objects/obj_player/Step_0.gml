/// @description movement, collisions, facing

//check and set values of 
var _right_key = keyboard_check(vk_right);
var _up_key = keyboard_check(vk_up);
var _left_key = keyboard_check(vk_left);
var _down_key = keyboard_check(vk_down);
var _sprint_key = keyboard_check(ord("X"));


// check if "sprinting"
if _sprint_key {
	xspd = (_right_key - _left_key) * move_speed * 2;
	yspd  = (_down_key - _up_key) * move_speed * 2;
} else {
xspd = (_right_key - _left_key) * move_speed;
yspd  = (_down_key - _up_key) * move_speed;
}

// Set rotation sprite
if (yspd == 0) {
    if (xspd > 0) {
        face = E;
    } else if (xspd < 0) {
        face = W;
    }
} else if (xspd > 0 && face == W) {
    face = E;
} else if (xspd < 0 && face == E) {
    face = W;
}

if (xspd == 0) {
    if (yspd > 0) {
        face = S;
    } else if (yspd < 0) {
        face = N;
    }
} else if (yspd > 0 && face == N) {
    face = S;
} else if (yspd < 0 && face == S) {
    face = N;
}

// Diagonal facing directions
if (xspd > 0 && yspd > 0) {
    face = SE;
} else if (xspd < 0 && yspd > 0) {
    face = SW;
} else if (xspd > 0 && yspd < 0) {
    face = NE;
} else if (xspd < 0 && yspd < 0) {
    face = NW;
}

// Set sprite index based on face
sprite_index = sprite[face];



// check collisions
if place_meeting(x + xspd, y, obj_wall) {
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall) {
	yspd = 0;
}
if place_meeting(x + xspd, y + yspd, obj_wall){
	xspd = 0;
	yspd = 0;
}


// preform movement
x += xspd;
y += yspd;



//depth = -bbox_bottom;



// Show real-time debug information in the Output window
// DISABLED
//show_debug_message("x: " + string(x));
//show_debug_message("y: " + string(y));
//show_debug_message("xspd: " + string(xspd));
//show_debug_message("yspd: " + string(yspd));
//show_debug_message("right_key: " + string(_right_key));
//show_debug_message("left_key: " + string(_left_key));
//show_debug_message("up_key: " + string(_up_key));
//show_debug_message("down_key: " + string(_down_key));
//show_debug_message("sprint_key: " + string(_sprint_key));

