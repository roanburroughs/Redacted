
function parse_text_file() {
    var lines = string_split(raw_text, "\n");
    var current_chunk = "";
    var current_chunk_lines = 0;
    
    for (var i = 0; i < array_length(lines); i++) {
        var line = string_trim(lines[i]);
        
        // Skip empty lines
        if (line == "") continue;
        
        // Check for break command
        if (line == "[break]") {
            // Save current chunk if it has content
            if (current_chunk != "") {
                array_push(text_lines, string_trim(current_chunk));
                current_chunk = "";
                current_chunk_lines = 0;
            }
            continue;
        }
		
		 // ADDED: Check for speaker command
        if (string_pos("[speaker", line) > 0 && string_pos("]", line) > 0) {
            process_speaker_command(line);
            continue;
        }
        
        
        // Check for character sprite commands
        if (string_char_at(line, 1) == "[" && string_pos("]", line) > 0) {
            process_sprite_command(line);
            continue;
        }
        
        // Split line into sentences (by periods)
        var sentences = string_split(line, ".");
        
        for (var j = 0; j < array_length(sentences); j++) {
            var sentence = string_trim(sentences[j]);
            if (sentence == "") continue;
            
            sentence += "."; // Add period back
            
            // Word wrap the sentence
            var words = string_split(sentence, " ");
            var temp_line = "";
            
            for (var k = 0; k < array_length(words); k++) {
                var test_line = temp_line + (temp_line == "" ? "" : " ") + words[k];
                
                if (string_length(test_line) <= max_chars_per_line) {
                    temp_line = test_line;
                } else {
                    // Current word would exceed line, check if we can fit it
                    if (current_chunk_lines >= max_lines) {
                        // Chunk is full, save it and start new chunk
                        array_push(text_lines, string_trim(current_chunk));
                        current_chunk = "";
                        current_chunk_lines = 0;
                    }
                    
                    // Add completed line to chunk
                    if (temp_line != "") {
                        current_chunk += temp_line + "\n";
                        current_chunk_lines++;
                    }
                    
                    temp_line = words[k];
                }
            }
            
            // Check if adding this completed sentence would exceed the box
            var sentence_line_count = ceil(string_length(temp_line) / max_chars_per_line);
            
            if (current_chunk_lines + sentence_line_count > max_lines) {
                // Can't fit this sentence, save current chunk and start new one
                if (current_chunk != "") {
                    array_push(text_lines, string_trim(current_chunk));
                }
                current_chunk = temp_line + "\n";
                current_chunk_lines = sentence_line_count;
            } else {
                // Add sentence to current chunk
                current_chunk += temp_line + "\n";
                current_chunk_lines += sentence_line_count;
            }
        }
    }
    
    // Add remaining chunk
    if (current_chunk != "") {
        array_push(text_lines, string_trim(current_chunk));
    }
}
