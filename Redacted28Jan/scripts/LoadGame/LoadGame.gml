
function LoadGame() {

   if (!variable_global_exists("colours") || !ds_exists(global.colours, ds_type_map)) {

        global.colours = ds_map_create()

    } else {

        ds_map_clear(global.colours) 

    }



    if (file_exists("Save.sav")) {

        ini_open("Save.sav")

 
        if (ini_read_real("Colours", "c_blue", 1) == 1) global.colours[? c_blue] = 1

        if (ini_read_real("Colours", "c_red", 1) == 1)  global.colours[? c_red] = 1
		
		 if (ini_read_real("Colours", "c_yellow", 1) == 1) global.colours[? c_yellow] = 1

        if (ini_read_real("Colours", "$cc338b", 1) == 1)  global.colours[? $cc338b] = 1
		
		 if (ini_read_real("Colours", "c_green", 1) == 1) global.colours[? c_green] = 1

        if (ini_read_real("Colours", "c_teal", 1) == 1)  global.colours[? c_teal] = 1

        

        ini_close() 

    }
	
	else 
	
	{
	global.colours[? c_blue] =1	
	
	global.colours[? c_red] =1
	
	global.colours[? c_yellow] =1
	
	global.colours[? $cc338b] =1
	
	global.colours[? c_green] =1
	
	global.colours[? c_teal] =1
	}
	
	

}