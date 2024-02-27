/// @description init variables
duration = 60; // how long the timer should be going up to in frames, as it is changed within step event
target_rm = 0; // set this when calling the function and creating the obj_fader
color = c_black; // default black fade

timer = 0; // intervals at which alpha is updated and divided by 
alpha = 0; // actual transparency
state = 0; // 0 = fading to black, 1 = fading from black
target_x = 0;
target_y = 0;
