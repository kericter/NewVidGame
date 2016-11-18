/// scr_movement
// Check for movment
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
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
    alarm[0] = room_speed/2;
    image_index = 1;
}
if (right) {
    alarm[0] = room_speed/2;
    image_index = 3;
}

// Shooting
if keyboard_check_pressed(vk_space) {
    alarm[1] = room_speed/6;
    instance_create(x+15, y+10, obj_bullet);
    instance_create(x-15, y+10, obj_bullet);
}
