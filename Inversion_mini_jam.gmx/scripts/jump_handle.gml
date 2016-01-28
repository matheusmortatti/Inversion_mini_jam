/// jump_handle(velocity);

if(is_real(argument0))
{
    if(jumping == true && key_jump != 0)
    {
        argument0 = key_jump * -jumpspeed;
        jumping = false;
    }
            
    if (place_meeting(x,y+1,obj_wall_parent))
    {
        argument0 = key_jump * -jumpspeed;
        if(argument0 != 0) jumping = true;
        else jumping = false;
    }
    
    return argument0;
}
