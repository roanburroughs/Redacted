 

function SaveGame() {
 
    if (!variable_global_exists("colours")) exit;



    ini_open("Save.sav") //open file and create a new one if there is none

    

 
    ini_write_real("Colours", "c_blue",  ds_map_exists(global.colours, c_blue) )

    ini_write_real("Colours", "c_red", ds_map_exists(global.colours, c_red)  )
   ini_write_real("Colours", "$cc338b",  ds_map_exists(global.colours, $cc338b) )

    ini_write_real("Colours", "c_yellow", ds_map_exists(global.colours, c_yellow)  )
	
	   ini_write_real("Colours", "c_teal",  ds_map_exists(global.colours, c_teal) )

    ini_write_real("Colours", "c_green", ds_map_exists(global.colours, c_green)  )

    ini_close()

}


 

 
 
