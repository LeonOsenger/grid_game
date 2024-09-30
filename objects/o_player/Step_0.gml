// move up 
if (keyboard_check(ord("W"))) {
	if (y_grid_pos > 0) {
		y_grid_pos--;
	}
	
	show_debug_message(y_grid_pos);

	set_player_pos(x_grid_pos, y_grid_pos);
}

// move down
if (keyboard_check(ord("S"))) {
	if (y_grid_pos < global.grid_sizes.grid_width) {
		y_grid_pos++;
	}

	set_player_pos(x_grid_pos, y_grid_pos);
}

// move left
if (keyboard_check(ord("A"))) {
	if (x_grid_pos > 0) {
		x_grid_pos--;
	}

	set_player_pos(x_grid_pos, y_grid_pos);
}

// move right
if (keyboard_check(ord("D"))) {
	if (y_grid_pos < global.grid_sizes.grid_height) {
		x_grid_pos++;
	}

	set_player_pos(x_grid_pos, y_grid_pos);
}




