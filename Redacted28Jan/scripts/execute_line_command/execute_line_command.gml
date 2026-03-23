function execute_line_command(_line) {
    if (string_pos("[speaker", _line) > 0) {
        process_speaker_command(_line);
        return true; // It was a command
    }
    if (string_char_at(_line, 1) == "[") {
        process_sprite_command(_line);
        return true; // It was a command
    }
    return false; // It was just regular text
}