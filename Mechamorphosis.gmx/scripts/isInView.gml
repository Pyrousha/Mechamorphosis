///isInView() Note: assumes sprite is centered at (0,0)
{
    if ((x + sprite_width-1 < view_xview) || (x > view_xview + view_wview) || (y + sprite_height-1 < view_yview) || (y > view_yview+view_hview))
    {
        return false;
    }
    return true;
}
