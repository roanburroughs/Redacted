function paintcolourfromglobal(){

with(oPlayer)
{
 
var map_size = ds_map_size(global.colours)

if (map_size > 0) {
    var random_index = irandom(map_size - 1)
    var key = ds_map_find_first(global.colours)
 
    
    repeat (random_index) {
        key = ds_map_find_next(global.colours, key)
    }
 
    other.paintcolour = key;
}
else other.paintcolour=choose(c_red,c_aqua,c_green,c_purple,c_orange,c_yellow)
}


}