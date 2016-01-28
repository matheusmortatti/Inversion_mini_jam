///input_handle();
///Get the player's input
key_right = keyboard_check(ord('D'));
key_left = -keyboard_check(ord('A'));
key_up = -keyboard_check(ord('W'));
key_down = keyboard_check(ord('S'));
key_jump = keyboard_check_pressed(vk_space);

if(!mouse_click) 
{
    switch(state_player)
    {
        case STATE_GRAV_DOWN:
            //React to inputs
            move = key_left + key_right;
            if(move != 0) image_xscale = move;
            hsp = move * movespeed;
            if (vsp < 10) vsp += grav;
            
            if(jumping == true && key_jump != 0)
            {
                vsp = key_jump * -jumpspeed;
                jumping = false;
            }
            
            if (place_meeting(x,y+1,obj_wall_parent))
            {
                vsp = key_jump * -jumpspeed;
                if(vsp != 0) jumping = true;
                else jumping = false;
            }
            
            break;
            
        case STATE_GRAV_UP:
            //React to inputs
            move = -(key_left + key_right);
            if(move != 0) image_xscale = -move;
            hsp = move * movespeed;
            if (vsp > -10) vsp -= grav;
            
            if(jumping == true && key_jump != 0)
            {
                vsp = key_jump * jumpspeed;
                jumping = false;
            }
            
            if (place_meeting(x,y-1,obj_wall_parent))
            {
                vsp = key_jump * jumpspeed
                if(vsp != 0) jumping = true;
                else jumping = false;
            }
            
            break;
            
        case STATE_GRAV_RIGHT:
            //React to inputs
            move = -(key_left + key_right);
            if(move != 0) image_xscale = -move;
            vsp = move * movespeed;
            if (hsp < 10) hsp += grav;
            
            if(jumping == true && key_jump != 0)
            {
                hsp = key_jump * -jumpspeed;
                jumping = false;
            }
            
            if (place_meeting(x+1,y,obj_wall_parent ))
            {
                hsp = key_jump * -jumpspeed
                if(hsp != 0) jumping = true;
                else jumping = false;
            }
            
            break;
            
        case STATE_GRAV_LEFT:
            //React to inputs
            move = (key_left + key_right);
            if(move != 0) image_xscale = move;
            vsp = move * movespeed;
            if (hsp > -10) hsp -= grav;
            
            if(jumping == true && key_jump != 0)
            {
                hsp = key_jump * jumpspeed;
                jumping = false;
            }
            
            if (place_meeting(x-1,y,obj_wall_parent))
            {
                hsp = key_jump * jumpspeed
                if(hsp != 0) jumping = true;
                else jumping = false;
            }
            break;
            
            
    }
    if(move == 0) image_index = walk_idle;
    scr_collision_handle(obj_wall_parent);
}
