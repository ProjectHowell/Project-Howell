    // Get input 
	
kLeft = -keyboard_check(vk_left);
kRight = keyboard_check(vk_right);

    // Use input 
	
move = kLeft + kRight;
hsp = move * moveSpeed;

if (vsp < 10) { vsp += grav; };

if (place_meeting(x, y + 1, obj_wall)) and (keyboard_check_pressed(ord("Z"))){ vsp=-jump_speed }

if(keyboard_check_released(ord("Z"))) and (vsp<0) vsp*=0.5;

    // H Collisions
	
if (place_meeting(x + hsp, y, obj_wall)) { while (!place_meeting(x + sign(hsp), y, obj_wall)) { x += sign(hsp); } hsp = 0; } x += hsp;

    // v Collisions
	
if (place_meeting(x, y + vsp, obj_wall)) { while (!place_meeting(x, y + sign(vsp), obj_wall)) { y += sign(vsp); } vsp = 0; } y += vsp;