
// ocharacter_slot - Draw Event
 
if (instance_exists(oTextBoxController)) {
    if (oTextBoxController.SlotSpeaker = slot_identifier) {
        image_blend = c_white;
    } else {
        image_blend = c_black;
    }
}
// Draw the sprite at the object's position
//draw_self();
if(charactersprite!=noone)draw_sprite(charactersprite, 0, x, y);