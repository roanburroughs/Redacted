
function parse_text_file() {
    var lines = string_split(raw_text, "\n");
    var current_chunk = "";
    var current_chunk_lines = 0;
    var current_commands = [];
    
    for (var i = 0; i < array_length(lines); i++) {
        var line = string_trim(lines[i])
        
        // Skip empty lines
        if (line == "") continue;
        
        // Check for break command
        if (line == "[break]") {
         
            if (current_chunk != "") {
             
                array_push(text_chunks, {
                    text: string_trim(current_chunk),
                    commands: current_commands
                })
                current_chunk = ""
                current_chunk_lines = 0;
                current_commands = []; 
            }
            continue;
        }
       
        if (string_pos("[speaker", line) > 0 && string_pos("]", line) > 0) {
            array_push(current_commands, {type: "speaker", data: line});
            continue;
        }
		
   
        
        if (string_char_at(line, 1) == "[" && string_pos("]", line) > 0) {
            array_push(current_commands, {type: "sprite", data: line});
            continue;
        }
        
        var sentences = string_split(line, ".")
        
        for (var j = 0; j < array_length(sentences); j++) {
            var sentence = string_trim(sentences[j]);
            if (sentence == "") continue;
            
            sentence += "."; 
            
            // Word wrap the sentence
            var words = string_split(sentence, " ");
            var temp_line = "";
            
            for (var k = 0; k < array_length(words); k++) {
                var test_line = temp_line + (temp_line == "" ? "" : " ") + words[k];
                
                if (string_length(test_line) <= max_chars_per_line) {
                    temp_line = test_line;
                } else {
                    if (current_chunk_lines >= max_lines) {
                     
                        array_push(text_chunks, {
                            text: string_trim(current_chunk),
                            commands: current_commands
                        });
                        current_chunk = "";
                        current_chunk_lines = 0;
                    }
                    
                    if (temp_line != "") {
                        current_chunk += temp_line + "\n";
                        current_chunk_lines++;
                    }
                    
                    temp_line = words[k];
                }
            }
            
            var sentence_line_count = ceil(string_length(temp_line) / max_chars_per_line);//ceil rounds up
            //i dont know if i do this anymore, it was for making sure the text isnt too big but we have breaks for that
            if (current_chunk_lines + sentence_line_count > max_lines) {
                if (current_chunk != "") {
             
                    array_push(text_chunks, {
                        text: string_trim(current_chunk),
                        commands: current_commands
                    });
                    current_commands = [];
                }
                current_chunk = temp_line + "\n";
                current_chunk_lines = sentence_line_count;
            } else {
                current_chunk += temp_line + "\n";
                current_chunk_lines += sentence_line_count;
            }
        }
    }
    
    if (current_chunk != "") {
        array_push(text_chunks, {
            text: string_trim(current_chunk),
            commands: current_commands
        });
    }
}
