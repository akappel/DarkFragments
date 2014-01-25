/*left_pressed = keyboard_check_direct(vk_left) || keyboard_check_direct(ord("A"));
right_pressed = keyboard_check_direct(vk_right) || keyboard_check_direct(ord("D"));
jump_pressed = keyboard_check_direct(vk_space) || keyboard_check_direct(ord("W") || keyboard_check_direct(vk_up));

with(bottom)
{
    if (place_meeting(x, y+player.vspd, obj_collideable))
    {
        while(!place_meeting(x, y, obj_collideable))
            player.y+=1;
        player.vspd = 0;
    }
}


vspd+=grav;

x+=hspd;
y+=vspd;

bottom.x = x;
bottom.y = y;

sides.x=x;
sides.y=y;*/

//Inputs
keyA = keyboard_check_direct(ord('A'));
keyD = keyboard_check_direct(ord('D'));
keySpace = keyboard_check_direct(vk_space);
mouseRight = mouse_check_button_pressed(mb_right);

    
    
//Movement left/right
if (keyA && grounded)
{
    hsp = -walk_speed;
    image_xscale = -1;
}

else if (keyD && grounded)
{
    hsp = walk_speed;
    image_xscale = 1;
}

//No input and both inputs
if ((keyA && keyD) or (!keyA && !keyD) and grounded)
{
    hsp = 0; 
}

//Jump
if (keySpace)
{
    if (grounded) vsp = -jump;
}

vsp += grav;

//Vert Collision Ground
if place_meeting(x,y+vsp,obj_ground)
{
    while (!place_meeting(x,y+(sign(vsp)),obj_ground)) y += sign(vsp);
    if (sign(vsp) == 1) grounded = 1;
    vsp = 0;
}
else
{
    grounded = 0;
}

//Hor Collision ground
if place_meeting(x+hsp,y,obj_ground)
{
    while (!place_meeting(x+sign(hsp),y,obj_ground)) x += sign(hsp);
    hsp = 0;
}

//Make sure it moves~
x += hsp;
y += vsp;



