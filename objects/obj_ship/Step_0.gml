/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_left)) {
  image_angle += rotateSpeed;
}

if (keyboard_check(vk_right)) {
  image_angle -= rotateSpeed;
}

if (keyboard_check(vk_up)) {
  motion_add(image_angle, moveSpeed);
}

if (keyboard_check(vk_space) && is_bullet_ok) {
  var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
  bullet.direction = image_angle;
  is_bullet_ok = false;
  alarm[1] = 0.1 * room_speed;
}

move_wrap(true, true, sprite_width / 2);