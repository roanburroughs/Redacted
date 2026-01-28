function getControls(){
	
	//Directional inputs
	keyRight = keyboard_check(vk_right) + gamepad_button_check(0, gp_padr);
	keyLeft = keyboard_check(vk_left) + gamepad_button_check(0, gp_padl);
	keyDown = keyboard_check(vk_down) + gamepad_button_check( 0, gp_padd )
	keyUp = keyboard_check(vk_up) + gamepad_button_check( 0, gp_padu );
	
	keyJump = keyboard_check_pressed(vk_space) + gamepad_button_check_pressed(0, gp_face1)
	keyDash = keyboard_check_pressed(vk_shift) + gamepad_button_check_pressed(0, gp_face4) +gamepad_button_check_pressed(0,gp_shoulderl)+gamepad_button_check_pressed(0,gp_shoulderr)
	
	keyPressed_lightAttack = keyboard_check_pressed( ord( "X" ) )+ gamepad_button_check_pressed(0, gp_face2) + gamepad_button_check_pressed(0, gp_shoulderlb);
	keyPressed_heavyAttack = keyboard_check_pressed( ord( "C" ) ) + gamepad_button_check_pressed(0, gp_face3) + gamepad_button_check_pressed(0, gp_shoulderrb);
	keyPressed_Poise = keyboard_check( ord( "Z" ) )
	keySpray = keyboard_check(ord("P"));
	
	key_jump_held = keyboard_check(vk_space) || keyboard_check(vk_up) || keyboard_check(ord("W")) or gamepad_button_check_pressed(0, gp_face1);
}