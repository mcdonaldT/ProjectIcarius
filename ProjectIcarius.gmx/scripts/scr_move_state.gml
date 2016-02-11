///scr_move_state(hspd, vspd)
hspd = (right_key - left_key)*spd;
vspd = (down_key - up_key)*spd;

if(hspd == 0 && vspd == 0){
    image_speed = 0;
    image_index = 0;
}else{
    image_speed = 0.5;
}
if(hspd > 0){
    sprite_index = spr_player_right;
}
if(hspd < 0){
    sprite_index = spr_player_left;
}
if(vspd > 0){
    sprite_index = spr_player_down;
}
if(vspd < 0){
    sprite_index = spr_player_up;
}

move(hspd, vspd);

depth =-y;
