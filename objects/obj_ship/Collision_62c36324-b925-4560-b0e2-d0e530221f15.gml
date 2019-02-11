/// @description Insert description here
// You can write your code in this editor


with(other){
	instance_destroy();
}
	sprite_flush(spr_ship);
	audio_play_sound(snd_die,1,false);
	lives -= 1;

if(lives = 0){
	instance_destroy();
	with(obj_game){
		alarm[2] = room_speed;
	}
	}