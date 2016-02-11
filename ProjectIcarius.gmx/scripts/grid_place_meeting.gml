/// grid_place_meeting(x,y, cell_type)
var xx = argument[0];
var yy = argument[1];
var cell_type = argument[2];

// Remember our position
var xp = x;
var yp = y;

// Update the position for the bbox calculations
x = xx;
y = yy;

// Check for the x meeting
var x_meeting = (Level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != cell_type) || 
                (Level.grid[# bbox_left  div CELL_WIDTH, bbox_top div CELL_HEIGHT] != cell_type);
                
// Check for the y meeeting
var y_meeting = (Level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != cell_type) ||
                (Level.grid[# bbox_left  div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != cell_type);
                
// Check for the center meeeting        
var center_meeting = (Level.grid[# xx div CELL_WIDTH, yy div CELL_HEIGHT] != cell_type);

//Move back
x = xp;
y = yp;

return x_meeting || y_meeting || center_meeting;
