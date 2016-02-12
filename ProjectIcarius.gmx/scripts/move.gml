/// move(hspd, vspd)
var hspd = argument[0];
var vsdp = argument[1];

//Horizontal Physics movement
if(grid_place_meeting(phy_position_x+hspd, phy_position_y, FLOOR)){
    while(!grid_place_meeting(phy_position_x+sign(hspd), phy_position_y, FLOOR)){
        phy_position_x+=sign(hspd);
    }
    hspd = 0;
}

//Move Horizontally
//TODO: UPDATE TO USE PHYSICS ENGINE
//x+= hspd;
phy_position_x += hspd;

//Vertical Movement
if(grid_place_meeting(phy_position_x, phy_position_y+vspd, FLOOR)){
    while(!grid_place_meeting(phy_position_x, phy_position_y+sign(vspd), FLOOR)){
        phy_position_y += sign(vspd);
    }
    vspd = 0;
}

//Move vertically
//y+=vspd;
phy_position_y += vspd;
