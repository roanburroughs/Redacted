function angle_lerp(_ang0,_ang1,_lerp) {
    var angle_diff = (angle_difference(_ang0,_ang1));
    //var angle_diff = ((((_ang1 - _ang0 + 180) % 360 )+ 360) % 360 ) - 180; //Attempting to avoid angle_difference(). didn't help though.
    var angle_next = (_ang0-angle_diff);

    var angle_new = lerp(_ang0, angle_next, _lerp);
    return(angle_new);
}


//https://forum.gamemaker.io/index.php?threads/i-cant-write-or-find-an-angle_lerp-function.108460/