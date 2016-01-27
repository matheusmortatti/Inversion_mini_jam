///scr_collision_handle(argument0);

if(is_real(argument0))
{
    //Horizontal Collision
    if (place_meeting(x+hsp,y,argument0))
    {
        while(!place_meeting(x+sign(hsp),y,argument0))
        {
            x += sign(hsp);
        }
        
        hsp = 0;
    }
    x += hsp;
    //Vertical Collision
    if (place_meeting(x,y+vsp,argument0))
    {
        while(!place_meeting(x,y+sign(vsp),argument0))
        {
            y += sign(vsp);
        }
        
        vsp = 0;
    }
    y += vsp;
}
