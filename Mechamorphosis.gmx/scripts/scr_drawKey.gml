///scr_drawKey()
draw_self();
draw_set_font(fnt_12x10);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

col = c_black;
col2 = global.blueColour;
if (hover == false)
{
    draw_set_colour(c_black);
}
else
{
    draw_set_colour(global.blueColour);
    col = global.blueColour;
    col2 = c_black;
}

switch(key)
{
    case vk_up:
        text = "UP";
    break;
    
    case vk_down:
        text = "DOWN";
    break;
    
    case vk_left:
        text = "LEFT";
    break;
    
    case vk_right:
        text = "RIGHT";
    break;
    
    case vk_space:
        text = "SPACE";
    break;
    
    default:
        text = string(chr(key));
}
draw_set_font(fnt_12x10_small);
draw_text(x+sprite_width/2, y + abs((sprite_height-string_height(text))/2), text);
draw_text_outlined(x+sprite_width/2, y+sprite_height*1.25, col2, col, string(name), 2);
