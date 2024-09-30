global.grid_sizes = {
	cell_height: 64,
	cell_width: 64,
	grid_height: 32,
	grid_width: 32,	
}

global.grid = ds_grid_create(global.grid_sizes.grid_height, global.grid_sizes.grid_width);

grid_border_thickness = 1; 

var _grid_x_pos = 0;
var _grid_y_pos = 0;

// setup values for every cell in grid
for (var _x_cell = 0; _x_cell < global.grid_sizes.grid_width; _x_cell++) {
	for (var _y_cell = 0; _y_cell < global.grid_sizes.grid_height; _y_cell++) {
		// psotions of cell
		var _cell_pos = {
			upper_left_corner: [_grid_x_pos, _grid_y_pos],
			upper_right_corner: [_grid_x_pos + global.grid_sizes.cell_width, _grid_y_pos],
			center: [_grid_x_pos + global.grid_sizes.cell_height/2, _grid_y_pos + global.grid_sizes.cell_height/2], 
			lower_left_corner: [_grid_x_pos, _grid_y_pos + global.grid_sizes.cell_height],
			lower_right_corner: [_grid_x_pos + global.grid_sizes.cell_width, _grid_y_pos + global.grid_sizes.cell_height],
		}
		
		// values of cell
		var _cell_data = {
			pos: _cell_pos, 
			cell_instance: noone,
		}
		
		ds_grid_set(global.grid, _x_cell, _y_cell, _cell_data);
		
		_grid_y_pos += global.grid_sizes.cell_height;
	}
	_grid_y_pos = 0; 
	_grid_x_pos += global.grid_sizes.cell_width;
}