/// scr_enemy
// enemy heatlh kill
if (hp <= 0) {
    alarm[2] = room_speed/20;
    sprite_index = spr_explosion;
    image_speed = .5;
    state = scr_death_state;
    audio_play_sound(snd_explosion, 10, false);
}
// damage player
    hit = instance_place(x,y, obj_player);

if (hit != noone)
{
    hit.hp -= 1;
}
