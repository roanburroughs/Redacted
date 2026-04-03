if (keyboard_check_released(vk_space) || gamepad_button_check_released(4, gp_face1)) {
    if (!out_of_text) {
		
		
		
     current_chunk_index++
        
        // search lines
        while (current_chunk_index < array_length(text_lines)) {
            var _potential_command = text_lines[current_chunk_index]
            
            if (execute_line_command(_potential_command)) {
                // Its a command
                current_chunk_index++
            } else {
                // normal text
                current_display_text = text_lines[current_chunk_index]
                break; 
            }
        }
		   if (current_chunk_index >= array_length(text_lines)) {
            out_of_text = true
			//if(gotoroom!=noone) room_goto(gotoroom)
			instance_destroy()
			instance_destroy(oNameTag)
			instance_destroy(oCharacter_Slot_Parent)
 
        } 
		
		
    }
	else instance_destroy()
}
timer++;
buttonprompt += sin(timer * fadespeed)*fadelength;
