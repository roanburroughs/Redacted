function execute_chunk_commands(chunk_index) {
    var chunk = text_chunks[chunk_index];
    
    for (var i = 0; i < array_length(chunk.commands); i++) {
        var cmd = chunk.commands[i];
        
        if (cmd.type == "sprite") {
            process_sprite_command(cmd.data);
        } else if (cmd.type == "speaker") {
            process_speaker_command(cmd.data);
        }
		
    }
}