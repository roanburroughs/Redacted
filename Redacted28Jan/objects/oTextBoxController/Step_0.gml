if (keyboard_check_pressed(vk_space)) {
    if (!out_of_text) {
        current_chunk_index++
        
        if (current_chunk_index >= array_length(text_chunks)) {
            out_of_text = true;
			if(gotoroom!=noone) room_goto(gotoroom)
			instance_destroy()
			instance_destroy(oNameTag)
			instance_destroy(oCharacter_Slot_Parent)
//            show_debug_message("Out of text");
        } else {
            execute_chunk_commands(current_chunk_index);
            current_display_text = text_chunks[current_chunk_index].text;
        }
    }
}
