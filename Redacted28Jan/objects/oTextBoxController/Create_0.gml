with(oStoryTrigger)
{
	
other.text_file_path=	text_file_path 
instance_destroy()
}
with(oStoryTrigger2)
{
	other.text_file_path = text_file_path
}
with(oStoryTrigger3)
{
	other.text_file_path = text_file_path
}
x=96
y=736

buttonprompt = 0; //for prompt telling how to cycle through dialogue
timer = 0;
fadespeed = 0.03;
fadelength = 0.06;
 
text_box_width = 1200  //idk how much these are even used in this game
text_box_height = 300 
font_size = 16 
font_name = FnDialogue 

// File reading
//text_file_path = "dialogue.txt"
raw_text = "";
text_lines = [];
current_chunk_index = 0;
current_display_text = "";
out_of_text = false;

instance_create_depth(x,y,depth+1,oCharacter_Slot_1)

instance_create_depth(x,y,depth+1,oCharacter_Slot_2)
// ADDED: Speaker tracking variables
SlotSpeaker = -1; // Which slot number is speaking (-1 means none)
CharacterSpeaking = ""; // Name of character speaking


// Character width calculation (monospace)
draw_set_font(font_name);
char_width = string_width("A"); // All chars same width in monospace
line_height = string_height("A");

// Calculate max chars per line and max lines
max_chars_per_line = floor(text_box_width / char_width);
max_lines = floor(text_box_height / line_height);

// Load and parse the text file
if (file_exists(text_file_path)) {
    var file = file_text_open_read(text_file_path);
    while (!file_text_eof(file)) {
        raw_text += file_text_read_string(file) + "\n";
        file_text_readln(file);
    }
    file_text_close(file);
    
    // Parse the text into chunks
    parse_text_file();
} else {
    show_debug_message("Text file not found: " + text_file_path);
    out_of_text = true;
}

// Load first chunk
if (array_length(text_lines) > 0) {
    current_display_text = text_lines[current_chunk_index];
}

 instance_create_depth(x,y,-1000,oNameTag)