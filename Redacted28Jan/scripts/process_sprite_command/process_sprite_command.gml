
function process_sprite_command(command_line) {
    // Expected format: [character slot1 = smorrigan_angry]
    var content = string_replace(command_line, "[", "")
    content = string_replace(content, "]", "")
    
    var parts = string_split(content, "=")
    if (array_length(parts) != 2) return
    
    var left_side = string_trim(parts[0])
    var sprite_name = string_trim(parts[1])
    

    var slot_parts = string_split(left_side, " ")
    if (array_length(slot_parts) < 2) return;
    
    var slot_str = string_trim(slot_parts[array_length(slot_parts) - 1])
    
    // Remove "slot" if present and get just the number
    slot_str = string_replace(slot_str, "slot", "")
    var slot_num = real(slot_str);
    
    // Get the sprite 
var sprite_asset = asset_get_index(sprite_name);

// ADD THIS:
show_debug_message("Attempting to load: '" + sprite_name + "' | Result: " + string(sprite_asset));

if (sprite_asset == -1) {
    show_debug_message("ERROR: Asset not found. Check spelling/case.");
    return;
}
    if (sprite_asset == -1) {
        show_debug_message("Sprite not found: " + sprite_name)
        return;
    }
	
    
    // character slot object and update its sprite
    with (oCharacter_Slot_Parent) {
        if (slot_identifier == slot_num) {
            charactersprite = sprite_asset
        }
    }
}