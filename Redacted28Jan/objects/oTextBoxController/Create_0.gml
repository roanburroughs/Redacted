x=96
y=736
instance_create_depth(x,y,-1000,oNameTag)
instance_create_depth(x,y,depth+1,oCharacter_Slot_1)

instance_create_depth(x,y,depth+1,oCharacter_Slot_2)
 
text_box_width = 1200  //idk how much these are even used in this game
text_box_height = 300 
font_size = 16 
font_name = FnDialogue 

// File reading
//text_file_path = "dialogue.txt"  //Moved to variable definitions,links to included data
raw_text = "" 
text_chunks = []  
text_lines = [] 
current_chunk_index = 0 
current_display_text = "" 
out_of_text = false 
 
SlotSpeaker = -1  // which slot number is speaking ,-1 is default for none
CharacterSpeaking = ""  // who is speaking, just for nametags


draw_set_font(font_name) 
char_width = string_width("A")  
line_height = string_height("A") 
 
max_chars_per_line = floor(text_box_width / char_width) 
max_lines = floor(text_box_height / line_height) 
 
if (file_exists(text_file_path)) {
    var file = file_text_open_read(text_file_path) 
    while (!file_text_eof(file)) {
        raw_text += file_text_read_string(file) + "\n" 
        file_text_readln(file) 
    }
    file_text_close(file) 
     
    parse_text_file() 
} else {
    show_debug_message("Text file not found: " + text_file_path) 
    out_of_text = true 
}
 

if (array_length(text_chunks) > 0) {
    execute_chunk_commands(0) 
    current_display_text = text_chunks[current_chunk_index].text 
}
