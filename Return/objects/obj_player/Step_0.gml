moving = false;

if keyboard_check(vk_left){
    dir = player_state.left;
	moving = true;

	x = x - 4;
}

else if keyboard_check(vk_right){
    dir = player_state.right;
	x = x + 4;
	moving=true;
}
else if keyboard_check(vk_up){
	dir = player_state.up;
    y = y - 4;
	moving=true;
}

else if keyboard_check(vk_down){
	dir = player_state.down;
    y = y + 4;
	moving=true;
}

if moving 
{
    switch (dir)
    {
        case player_state.up:
        sprite_index=spr_keera_up_walk;
        break;

        case player_state.down:
        sprite_index=spr_keera_down_walk;
        break;

        case player_state.left:
        sprite_index=spr_keera_left_walk;
        break;
 
        case player_state.right:
        sprite_index=spr_keera_right_walk;
        break;
    }
}
else
{
    switch (dir)
    {
        case player_state.up:
        sprite_index=spr_keera_up_idle;
        break;

        case player_state.down:
        sprite_index=spr_keera_down_idle;
        break;

        case player_state.left:
        sprite_index=spr_keera_left_idle;
        break;
 
        case player_state.right:
        sprite_index=spr_keera_right_idle;
        break;
    }
}