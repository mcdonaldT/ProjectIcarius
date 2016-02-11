/// move(hspd, vspd)
var hspd = argument[0];
var vsdp = argument[1];

//Horizontal Physics movement
if(grid_place_meeting(x+hspd, y, FLOOR)){
    while(!grid_place_meeting(x+sign(hspd), y, FLOOR)){
        x+=sign(hspd);
    }
    hspd = 0;
}

//Move Horizontally
//TODO: UPDATE TO USE PHYSICS ENGINE
x+= hspd;

//Vertical Movement
if(grid_place_meeting(x, y+vspd, FLOOR)){
    while(!grid_place_meeting(x, y+sign(vspd), FLOOR)){
        y += sign(vspd);
    }
    vspd = 0;
}

//Move vertically
y+=vspd;
