// takes all arguments
function fadeAndSwitchAudio(_snd, _priority, _loop, _offset, _pitch) {
    // Check if obj_mus_controller instance already exists
    if (!instance_exists(obj_mus_controller)) {
        // If it doesn't exist, create a new instance
        mus_controller = instance_create_layer(0, 0, "Instances", obj_mus_controller);
    } else {
		if (!mus_controller.audio_current != _snd) {
			// If it exists, and is a differnt audio initiate the fade out
			mus_controller = obj_mus_controller;
			mus_controller.fade_out_duration = room_speed * 2; // 2 seconds for fade out
			mus_controller.fade_out_timer = 0;
		}
        
    }
	if (!mus_controller.audio_current != _snd) {
	    with (mus_controller) {
	        audio_fade_out_duration = fade_out_duration; // Store fade out duration
	        audio_fade_out_timer = 0; // Reset fade out timer
	        audio_fade_out_target = audio_sound_get_gain(audio_current); // Store the current volume as the fade-out target
	        audio_fade_out_target = max(audio_fade_out_target, 0); // Ensure the target volume is not below 0
	    }
	}
	if (mus_controller.audio_current != _snd) {
	    // Store the parameters for the new audio
	    mus_controller.new_audio = _snd;
	    mus_controller.new_priority = _priority;
	    mus_controller.new_loop = _loop;
	    mus_controller.new_offset = _offset;
	    mus_controller.new_pitch = _pitch;
	}
}