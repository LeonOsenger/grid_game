// draw grid
draw_set_color(c_black);

var _grid_line_x_pos = 0;
var _grid_line_y_pos = 0;

for (var _i = 0; _i <= global.grid_sizes.grid_height; _i++) {
	draw_line_width(0, _grid_line_y_pos, global.grid_sizes.grid_height * global.grid_sizes.cell_height, _grid_line_y_pos, grid_border_thickness);
	_grid_line_y_pos += global.grid_sizes.cell_height;
}

for (var _i = 0; _i <= global.grid_sizes.grid_width; _i++) {
	draw_line_width(_grid_line_x_pos, 0, _grid_line_x_pos, global.grid_sizes.grid_width * global.grid_sizes.cell_width, grid_border_thickness);
	_grid_line_x_pos += global.grid_sizes.cell_width;
}


