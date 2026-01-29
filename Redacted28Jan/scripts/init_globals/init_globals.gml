
/// init_globals()  -- call once at game start (Create of a persistent controller)
function init_globals() {
    // defualt 
  //  if (!variable_global_exists("baseattack"))  global.baseattack  = 12;
	
	
	
	 if (!variable_global_exists("deck") || !ds_exists(global.colours, ds_type_map)) {
		/// ADD cards to deck here
		//Every skill should be here, all 0 by default and we can get teh player to change that 0 to however many in the deck they want
		//Adding cards is done here and in oSKillCards
        global.colours = ds_map_create()	
        global.colours[? "c_blue"] = 1; 
		global.colours[? "c_red"] = 1; 
 
		
		
    }
	
	
	
	
}
