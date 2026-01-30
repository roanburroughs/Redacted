paintRight = keyboard_check(vk_right);
paintLeft = keyboard_check(vk_left);
paintUp = keyboard_check(vk_up);
paintDown = keyboard_check(vk_down);

paintcolour = choose(c_aqua, c_green, c_red, c_orange, c_purple, c_yellow);



hsp = 0;
vsp = 0;
grav = .475;
drop = false;

hitByPaintAttack = ds_list_create();

time_source = time_source_create(time_source_game, 30, time_source_units_frames, function()
	{
		drop = true;
	}, []);

paintcolourfromglobal()
 