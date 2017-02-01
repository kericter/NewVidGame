/// scr_movement
// Check for movment
left = max(keyboard_check(vk_left), keyboard_check(ord("A")),0);
right = max(keyboard_check(vk_right), keyboard_check(ord("D")),0);
up = max(keyboard_check(vk_up), keyboard_check(ord("W")),0);
down = max(keyboard_check(vk_down), keyboard_check(ord("S")),0);
canshoot = keyboard_check_pressed(vk_space);

// Movment
vx = (right - left) * player_speed;
vy = (down - up) * player_speed;

x += vx;
y += vy;

// Collison with room
x = min(x,room_width-18);
x = max(x,18);
y = min(y,room_height-18);
y = max(y,18);

// Sprite animation
if (!left || !right) image_index = 2;
if (left) {
    alarm[0] = room_speed * 2;
    image_index = 1;
}
if (right) {
    alarm[0] = room_speed * 2;
    image_index = 3;
}
// Shooting
if (keyboard_check_pressed(vk_space)) {
    bullet_1 = instance_create(x+15, y+10, obj_bullet);
    bullet_2 = instance_create(x-15, y+10, obj_bullet);
    bullet_3 = instance_create(x, y+13, obj_bullet);
    bullet_1.direction = 85;
    bullet_2.direction = 95;
    bullet_3.direction = 90;
    audio_play_sound(snd_shoot, 10, false);
}
