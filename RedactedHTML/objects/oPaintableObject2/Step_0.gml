event_inherited()
/*var any = false, all_ok = true;
with (oPaintedFloor) {
    if (place_meeting(x, y, other)) { any = true; if (image_blend == c_white) all_ok = false; }
}
if (any && all_ok) image_index = 1;

/*var inst = instance_place(x, y, oPaintedFloor);
if (inst != noone && inst.image_blend != c_white) image_index = 2