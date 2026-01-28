function process_speaker_command(command_line) {
    // Expected format: [speaker morrigan slot1]
    var content = string_replace(command_line, "[speaker", "");
    content = string_replace(content, "]", "");
    content = string_trim(content);
    
    var parts = string_split(content, " ");
    if (array_length(parts) < 2) return;
    
    // First part is character name
    CharacterSpeaking = string_trim(parts[0]);
    
    // Second part is 
    var slot_str = string_trim(parts[1]);
    slot_str = string_replace(slot_str, "slot", "");
    SlotSpeaker = real(slot_str);
    
    show_debug_message("Speaker set to: " + CharacterSpeaking + " in slot " + string(SlotSpeaker));
}