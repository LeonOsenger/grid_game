x_grid_pos = 5
y_grid_pos = 5

function set_player_pos(_x_pos, _y_pos) {
	if ((_x_pos >= 0 and _x_pos < global.grid_sizes.grid_width) and (_y_pos >= 0 and _y_pos < global.grid_sizes.grid_height)) {
		var _cell_pos = ds_grid_get(global.grid, _x_pos, _y_pos);	
	
		x = _cell_pos.pos.center[0]; 
		y = _cell_pos.pos.center[1];	
	}
}

set_player_pos(x_grid_pos, y_grid_pos);