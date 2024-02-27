/// @description Insert description here
// You can write your code in this editor
if (fade_out_timer < fade_out_duration) {
    fade_out_timer++;
    var fade_progress = min(1, fade_out_timer / fade_out_duration);
    audio_sound_gain(audio_current, 1 - fade_progress, 0); // Fade out the current audio
} else if (!playing){
    // Switch to the new audio
    audio_play_sound(new_audio, new_priority, new_loop, 1.0, new_offset, new_pitch);
	playing = true;
} else {
	
}
